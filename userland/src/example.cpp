#include <rclcpp/rclcpp.hpp>

int main()
{
  rmw_t bar = rclcpp::bar();
  return bar.data;
}
