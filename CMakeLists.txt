cmake_minimum_required(VERSION 3.20)

project(myproject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# ---- Library ----------------------------------------------------------------
add_library(myproject
    src/math.cpp
)
target_include_directories(myproject PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ---- Application ------------------------------------------------------------
add_executable(myproject_app
    src/main.cpp
)
target_link_libraries(myproject_app PRIVATE myproject)

# ---- Tests ------------------------------------------------------------------
enable_testing()

find_package(GTest REQUIRED)

add_executable(test_runner
    tests/test_math.cpp
)
target_link_libraries(test_runner PRIVATE
    myproject
    GTest::gtest
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(test_runner)
