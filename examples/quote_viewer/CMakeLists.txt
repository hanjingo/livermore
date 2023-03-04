cmake_minimum_required(VERSION 3.24.1)

project(quote_viewer)

include_directories(${CMAKE_SOURCE_DIR}/src)
include_directories(${Xtp_INCLUDE_DIRS})

link_directories(${Xtp_LIBRARY_DIRS})

set(LIBS 
    debug xtptraderapi debug xtpquoteapi
    optimized xtptraderapi optimized xtpquoteapi
)

add_executable(${PROJECT_NAME}
    ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
)

target_link_libraries(${PROJECT_NAME} ${LIBS})