cmake_minimum_required(VERSION 3.24.1)

if (USE_BOOST)
    if (NOT DEFINED BOOST_VERSION)
        set(BOOST_VERSION 1.81.0)
        set(Boost_NO_WARN_NEW_VERSIONS ON)
    endif()

    if (NOT DEFINED BOOST_ROOT)
        set(BOOST_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/boost)
    endif()

    if (NOT EXISTS ${BOOST_ROOT})
        find_package(FetchBoost REQUIRED)
    endif()
endif()

if (USE_SPDLOG)
    if (NOT DEFINED SPDLOG_VERSION)
        set(SPDLOG_VERSION 1.11.0)
    endif()

    if (NOT DEFINED SPDLOG_ROOT)
        set(SPDLOG_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/spdlog)
    endif()

    if (NOT EXISTS ${SPDLOG_ROOT})
        find_package(FetchSpdlog REQUIRED)
    endif()
endif()