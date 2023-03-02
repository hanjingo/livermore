include(FetchContent)

#-----------------------------option--------------------------
set(FETCH_LIBZMQ_PASS true)

if (NOT LIBZMQ_VERSION)
    set(LIBZMQ_VERSION "4.3.4" CACHE STRING "libzmq version")
endif()
if (NOT LIBZMQ_FETCH_WAY)
    set(LIBZMQ_FETCH_WAY "https" CACHE STRING "libzmq fetch way: https, git, ...")
endif()
if (NOT LIBZMQ_ROOT)
    set(LIBZMQ_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/libzmq)
endif()

list(APPEND MAKE_ARGS ..)

list(APPEND BUILD_ARGS ZeroMQ.sln)
list(APPEND BUILD_ARGS /Build)
list(APPEND "")

#-------------------------fetch declare------------------------

# libzmq 4.3.4
FetchContent_Declare(
    https_libzmq_4.3.4
    URL https://github.com/zeromq/libzmq/releases/download/v4.3.4/zeromq-4.3.4.zip
    SOURCE_DIR ${LIBZMQ_ROOT}
)
FetchContent_Declare(
    git_libzmq_4.3.4
    GIT_REPOSITORY https://github.com/zeromq/libzmq.git
    GIT_TAG v4.3.4
    SOURCE_DIR ${LIBZMQ_ROOT}
)

set( LIBZMQ_FETCH_CONTENT "${LIBZMQ_FETCH_WAY}_libzmq_${LIBZMQ_VERSION}" )

#-------------------------config---------------------------------

if (UNIX)
endif()

if (WIN32)
    set(CONFIG_CMD mkdir build)

    set(MAKE_CMD cmake)

    # example: devenv.exe ZeroMQ.sln /Build "Debug|Win32" /Project libzmq-static
    set(BUILD_CMD devenv.exe ZeroMQ.sln /Build "Debug|Win32" /Project libzmq-static)
endif()
    
if (APPLE)
endif()
    
if (MINGW)
endif()

# -----------------------check-----------------------------
if (EXISTS ${LIBZMQ_ROOT})
    message(FATAL_ERROR "libzmq root path already exist, please remove it before")
endif()

# -----------------------build-----------------------------
if (${FETCH_LIBZMQ_PASS})
    message("Downloading ${LIBZMQ_FETCH_CONTENT}, please wait...")
    FetchContent_MakeAvailable(${LIBZMQ_FETCH_CONTENT})

    execute_process(COMMAND ${CONFIG_CMD}
                    WORKING_DIRECTORY ${LIBZMQ_ROOT})

    execute_process(COMMAND ${MAKE_CMD} ${MAKE_ARGS}
                    WORKING_DIRECTORY ${LIBZMQ_ROOT}/build)

    execute_process(COMMAND ${BUILD_CMD}
                    WORKING_DIRECTORY ${LIBZMQ_ROOT}/build)
endif()