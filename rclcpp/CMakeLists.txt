cmake_minimum_required(VERSION 2.8.3)

project(rclcpp)

find_package(ament_cmake REQUIRED)
find_package(rmw REQUIRED)

include_directories(include)

add_library(${PROJECT_NAME} SHARED src/rclcpp.cpp)
ament_target_dependencies(${PROJECT_NAME} "rmw")

ament_export_dependencies(rmw)
ament_export_include_directories(include)
ament_export_libraries(${PROJECT_NAME})

ament_package()

install(
  DIRECTORY include/
  DESTINATION include
)

install(
  TARGETS ${PROJECT_NAME}
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)
