

namespace cache_yz
{

#define CACHE_SIZE 256 // unit = 4KByte
#define FILE_SIZE 128  // unit = 4KByte
#define PAGE_SIZE 1024 * 4

    typedef unsigned long size_t;
    size_t *file_cache;
    void *cache_pool;
    size_t cache_used[CACHE_SIZE]; // mark the usage of cache blocks in cache pool

    int init_cache(size_t cache_size, int fd);
}