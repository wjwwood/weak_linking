cmake_minimum_required(VERSION 2.8.3)

project(rmw)

find_package(ament_cmake REQUIRED)

ament_export_include_directories(include)

ament_package()

install(
  DIRECTORY include/
  DESTINATION include
)
