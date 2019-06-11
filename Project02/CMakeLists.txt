cmake_minimum_required(VERSION 3.9)
project(Project02 C)

set(CMAKE_C_STANDARD 99)

add_executable(Project02 main.c doublylinkedlist.c doublylinkedlist.h)

set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")