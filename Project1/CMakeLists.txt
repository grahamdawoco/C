cmake_minimum_required(VERSION 3.9)
project(Project1 C)

set(CMAKE_C_STANDARD 99)

add_executable(Project1 main.c)

set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")