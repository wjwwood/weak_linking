cmake_minimum_required(VERSION 2.8.3)

project(rmw_impl1)

find_package(ament_cmake REQUIRED)
find_package(rmw REQUIRED)

add_library(${PROJECT_NAME} SHARED src/rmw_impl1.c)
ament_target_dependencies(${PROJECT_NAME} "rmw")
add_definitions("-DRMW_BUILD_DLL")

ament_export_dependencies(rmw)
ament_export_libraries(${PROJECT_NAME})

ament_package()

install(
  TARGETS ${PROJECT_NAME}
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)
