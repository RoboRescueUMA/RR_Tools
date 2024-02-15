#!/bin/bash

BLUE="\e[34m"
endBLUE="\e[0m"

echo -e "${BLUE}--- Constructor del entorno Roborescue ---${endBLUE}"
echo -e "${BLUE}******************************************${endBLUE}"

echo -e "${BLUE}Cargando entorno global de ROS...${endBLUE}"
source /opt/ros/noetic/setup.bash
echo -e "${BLUE}Entorno ROS cargado!${endBLUE}"

echo -e "${BLUE}Construyendo workspace rr_ros_ws...${endBLUE}"
cd
mkdir -p ~/rr_ros_ws/src
cd ~/rr_ros_ws/
catkin_make
echo -e "${BLUE}Workspace construido!${endBLUE}"

echo -e "${BLUE}Construyendo paquetes comunes del entorno Roborescue...${endBLUE}"
cd ~/rr_ros_ws/src/
catkin_create_pkg rr_robot_description std_msgs rospy roscpp
cd ~/rr_ros_ws/src/rr_robot_description/
mkdir urdf
cd ~/rr_ros_ws
catkin_make
echo -e "${BLUE}Paquetes construidos!${endBLUE}"

echo -e "${BLUE}Para cargar el entorno de Roborescue ejecutar el siguiente comando:\n${endBLUE}"
echo -e "\e[32m  source ~/RR_Scripts/upload_rr_env.sh\e[0m\n"
