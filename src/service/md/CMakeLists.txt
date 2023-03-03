cmake_minimum_required(VERSION 3.24.1)

include_directories(${CMAKE_PROJECT_SOURCE_DIR}/libcpp)
include_directories(${CMAKE_SOURCE_DIR})

add_executable(md
    ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
)