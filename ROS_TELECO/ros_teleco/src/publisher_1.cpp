#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>

int main(int argc, char **argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "publisher_1");

    // Create a ROS node handle
    ros::NodeHandle nh;

    // Create a publisher that publishes messages of type std_msgs::String on the "your_topic" topic
    ros::Publisher publisher = nh.advertise<std_msgs::String>("topic_1", 10);

    // Set the loop rate (in Hz)
    ros::Rate loop_rate(1);

    while (ros::ok())
    {
        // Create a string message
        std_msgs::String msg;
        std::cin>>msg.data;

        // Publish the message
        publisher.publish(msg);

        // Log the message to the console
        ROS_INFO("Publishing: %s", msg.data.c_str());

        // Spin once to let callbacks run
        ros::spinOnce();

        // Sleep to achieve the desired loop rate
        loop_rate.sleep();
    }

    return 0;
}
