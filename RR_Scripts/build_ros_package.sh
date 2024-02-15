#!/bin/bash

BLUE="\e[34m"
endBLUE="\e[0m"

echo -e "${BLUE}Constructor de nuevos paquetes en el workspace de Roborescue: rr_ros_ws${endBLUE}"

echo -e "${BLUE}Introduce el nombre del paquete:${endBLUE}"
read pkgname

ws_dir="$HOME/rr_ros_ws"
pkg_dir="$ws_dir/src/$pkgname"

if [ -d "$ws_dir" ]; then

    if [ -d "$pkg_dir" ]; then
        echo -e "${BLUE}Este paquete ya existe!${BLUE}"
    else
        echo -e "${BLUE}Construyendo el paquete...${BLUE}"
        cd ~/rr_ros_ws/src/
	catkin_create_pkg "$pkgname" std_msgs rospy roscpp
	cd ~/rr_ros_ws
	catkin_make
	echo -e "${BLUE}Paquete construido!${endBLUE}"
    fi

else
    echo -e "${BLUE}El workspace de Roborescue aún no ha sido creado. Diríjase al directorio RR_Scripts y ejecute:${BLUE}\n\t\e[32m  source ~/RR_Scripts/install_rr_env.sh\e[0m\n"
fi
