#include <stdbool.h>

#define PRINTF_STDIO(...) printf(__VA_ARGS__)
#define IN_DATAMDB(target_addr) \
    PRINTF_STDIO("\033[4;31;42m %s %s in data.mdb \033[0m\n", #target_addr, in_mmap(env_cur->me_map, env_cur->me_mapsize, target_addr) ? "is" : "is not")

typedef __SIZE_TYPE__ size_t;

int in_mmap(void *mmap_addr, size_t mmap_size, void *target_addr)
{
    // printf("%lu %lu %lu \n", mmap_addr, mmap_size, target_addr);
    if (target_addr >= mmap_addr && target_addr < mmap_addr + mmap_size)
    {
        return 1;
    }
    return 0;
}
// PRINTF_STDIO("%d\n", in_mmap(env->me_map, env->me_mapsize, env->me_dbiseqs));
