aux_source_directory(. LIB_SRCS)
include_directories(${PROJECT_SOURCE_DIR}/include)
# include_directories(${PROJECT_SOURCE_DIR}/src/cache_yz)
add_library(lmdb ${LIB_SRCS})

link_libraries(lmdb)

