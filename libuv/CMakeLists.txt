project(libuv)

# Reference: https://github.com/dacap/libuv-cmake/blob/master/CMakeLists.txt
# Windows version: https://msdn.microsoft.com/zh-tw/library/windows/desktop/aa383745(v=vs.85).aspx
add_definitions(
    -DWIN32_LEAN_AND_MEAN  # Avoid including unnecessary Windows header files
    -D_WIN32_WINNT=0x0600  # 0x0600 is Windows Vista
    -D_CRT_SECURE_NO_WARNINGS # disable warnings about old libc functions
)

set(LIBUV_SRCS
    # Common
    src/fs-poll.c
    src/inet.c
    src/threadpool.c
    src/uv-common.c
    src/version.c
    # Windows only
    src/win/async.c
    src/win/core.c
    src/win/detect-wakeup.c
    src/win/dl.c
    src/win/error.c
    src/win/fs-event.c
    src/win/fs.c
    src/win/getaddrinfo.c
    src/win/getnameinfo.c
    src/win/handle.c
    src/win/loop-watcher.c
    src/win/pipe.c
    src/win/poll.c
    src/win/process-stdio.c
    src/win/process.c
    src/win/req.c
    src/win/signal.c
    src/win/stream.c
    src/win/tcp.c
    src/win/thread.c
    src/win/timer.c
    src/win/tty.c
    src/win/udp.c
    src/win/util.c
    src/win/winapi.c
    src/win/winsock.c
)

include_directories(
    ${CMAKE_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

add_library(libuv ${LIBUV_SRCS})
target_link_libraries(libuv
    ws2_32
    psapi
    iphlpapi
    shell32
    userenv
)
