#include <stdio.h>

#include "logger.h"
#include "lmdb.h"
#include "boost/filesystem.hpp"
extern MDB_env *env_for_log;

int add_data(MDB_env *env)
{
    int rc;
    MDB_val key, data;
    MDB_cursor *cursor;
    MDB_dbi dbi;
    MDB_txn *txn;
    char sval[32];

    key.mv_size = sizeof(int);
    key.mv_data = sval;
    data.mv_size = sizeof(sval);
    data.mv_data = sval;

    rc = mdb_txn_begin(env, NULL, 0, &txn);
    rc = mdb_open(txn, NULL, 0, &dbi);

    sprintf(sval, "%03x %d foo bar", 32, 3141592);
    printf("put: key = %.*s, data = %.*s\n", (int)key.mv_size, (char *)key.mv_data, (int)data.mv_size, (char *)data.mv_data);
    rc = mdb_put(txn, dbi, &key, &data, 0);
    rc = mdb_txn_commit(txn);
}

int get_data(MDB_env *env)
{
    int rc;
    MDB_val key, data;
    MDB_cursor *cursor;
    MDB_dbi dbi;
    MDB_txn *txn;
    char sval[32];

    key.mv_size = sizeof(int);
    key.mv_data = sval;
    data.mv_size = sizeof(sval);
    data.mv_data = sval;

    rc = mdb_txn_begin(env, NULL, MDB_RDONLY, &txn);
    rc = mdb_open(txn, NULL, 0, &dbi);
    rc = mdb_cursor_open(txn, dbi, &cursor);
    while ((rc = mdb_cursor_get(cursor, &key, &data, MDB_NEXT)) == 0)
    {
        PRINTF_STDIO("get: key = %.*s, data = %.*s\n", (int)key.mv_size, (char *)key.mv_data, (int)data.mv_size, (char *)data.mv_data);
    }
    mdb_cursor_close(cursor);
    mdb_txn_abort(txn);
}

int main(int argc, char *argv[])
{
    int rc;
    MDB_env *env;
    MDB_txn *txn, *txn_r;
    MDB_cursor *cursor;
    MDB_dbi dbi;
    MDB_val key, data;
    char sval[32];

    rc = mdb_env_create(&env);
    unsigned int flags = 0664 | MDB_DUPSORT;
    rc = mdb_env_open(env, "testdb", 0, flags);

    env_cur = env;

    // rc = add_data(env);
    // if (rc)
    // {
    //     fprintf(stderr, "mdb_txn_commit: (%d) %s\n", rc, mdb_strerror(rc));
    //     goto leave;
    // }

    rc = get_data(env);

leave:
    mdb_close(env, dbi);
    mdb_env_close(env);
    return 0;
}
