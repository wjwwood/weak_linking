cmake_minimum_required(VERSION 2.8.3)

project(userland)

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rmw_impl1 REQUIRED)
find_package(rmw_impl2 REQUIRED)

add_executable(example__rmw_impl1 src/example.cpp)
ament_target_dependencies(example__rmw_impl1 "rclcpp" "rmw_impl1")

add_executable(example__rmw_impl2 src/example.cpp)
ament_target_dependencies(example__rmw_impl2 "rclcpp" "rmw_impl2")

ament_package()

install(
  TARGETS example__rmw_impl1 example__rmw_impl2
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)
