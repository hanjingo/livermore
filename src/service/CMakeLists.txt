cmake_minimum_required(VERSION 3.24.1)

# add_subdirectory(console)
# add_subdirectory(core)
# add_subdirectory(db)
# add_subdirectory(sentinel)
# add_subdirectory(trader)

if (BUILD_QUOTE)
    add_subdirectory(quote)
endif()