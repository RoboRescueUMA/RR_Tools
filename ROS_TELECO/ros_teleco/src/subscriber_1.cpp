#include "ros/ros.h"
#include "std_msgs/String.h"

void callback(const std_msgs::String::ConstPtr& msg)
{
    // Callback function that is executed whenever a message is received

    // Print the received message to the console
    ROS_INFO("Received: %s", msg->data.c_str());
}

int main(int argc, char **argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "subscriber_1");

    // Create a ROS node handle
    ros::NodeHandle nh;

    // Create a subscriber that subscribes to messages of type std_msgs::String on the "your_topic" topic
    ros::Subscriber subscriber = nh.subscribe("topic_1", 10, callback);

    // Spin to let callbacks run
    ros::spin();

    return 0;
}
