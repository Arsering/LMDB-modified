include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories(${PROJECT_SOURCE_DIR}/fma-common)

aux_source_directory(. LIB_SRCS)

add_library(lmdb ${LIB_SRCS})

link_libraries(lmdb)

