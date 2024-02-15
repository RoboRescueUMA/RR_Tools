#!/bin/bash

BLUE="\e[34m"
endBLUE="\e[0m"
RED="\e[31m"

echo -e "${BLUE}--- Cargador del entorno Roborescue ---${endBLUE}"
echo -e "${BLUE}******************************************${endBLUE}"

echo -e "${BLUE}Cargando entorno Roborescue...${endBLUE}"
export PS1="${RED}(Roborescue_env)\e[0m$PS1"
echo -ne "\e]11;#000010\a"  # background-color change #0d0041
echo -e "${BLUE}Entorno Roborescue cargado!${endBLUE}"

echo -e "${BLUE}Cargando workspace rr_ros_ws...${endBLUE}"
source ~/rr_ros_ws/devel/setup.bash
echo -e "${BLUE}Workspace cargado!${endBLUE}"

terminator -e "bash -c 'source /opt/ros/noetic/setup.bash; roscore; exec bash'"
