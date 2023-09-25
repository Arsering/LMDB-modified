#include <stdio.h>
#include <unistd.h>
#include <cstdlib> // Needed to use the exit function

#include "cache_yz.hh"
#include "logger.h"

namespace cache_yz
{
    int init_cache(size_t cache_size, int fd)
    {
        // extern void *cache;

        // int ret = pread(fd, global_cache, CACHE_SIZE, 0);
        size_t length = lseek(fd, 0, SEEK_END);
        PRINTF_STDIO("Size of file data stored in cache = %d\n", length);

        /** Allocate space and initilized to zero */
        file_cache = (size_t *)calloc(FILE_SIZE, sizeof(size_t));

        cache_pool = calloc(CACHE_SIZE, PAGE_SIZE);
        for (int i = 0; i < CACHE_SIZE; i++)
        {
            cache_used[i] = false;
        }
        return 0;
    }
    int destroy_cache()
    {
        free(file_cache);
        free(cache_pool);
        return 0;
    }

    /**
     * @brief Get the page object
     *
     * @param file_offset the file offset of wanted content in the data.mdb
     * @param replica_id
     */
    void get_page(size_t file_offset, unsigned int replica_id)
    {
        size_t page_num_in_File = file_offset / PAGE_SIZE;
        if (page_num_in_File >= FILE_SIZE)
        {
            PRINTF_STDIO("File is too long, please resize the file and the cache pool!\n");
            exit(EXIT_FAILURE);
        }
        if (file_cache[page_num_in_File] == 0)
        {
            int empty_id = 0;
            for (int i = 0; i < CACHE_SIZE; i++)
            {
            }
        }
    }
}