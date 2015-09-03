#include <rclcpp/rclcpp.hpp>

int main()
{
  rmw_t bar = rclcpp::bar();
  printf("Using impl: %d\n", bar.data);
  return 0;
}
