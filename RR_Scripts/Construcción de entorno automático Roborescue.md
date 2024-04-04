# ROBORESCUE ENVIRONMENT

## INSTRUCCIONES DE INSTALACIÓN

Descargar el archivo roborescue_environment.zip presente en este repositorio y descomprimir el archivo. Tras descomprimir el archivo aparecerá una carpeta llamada RR_Scripts que contiene los archivos necesarios para la instalación. Para que todo funcione correctamente, dicha carpeta debe estar en el directorio ~. Si no lo está, porque probablemente esté en la carpeta Descargas, se puede mover la carpeta ejecutando `mv RR_scripts ~`. 

Cuando la carpeta RR_Scripts esté en el directorio home (~) se podrá comenzar con la instalación.


***
1. En primer lugar se deberá dar permisos de ejecución a todos los ejecutables con la siguiente instrucción:
   
	`sudo chmod +x  ~/RR_Scripts/install_rr_env.sh ~/RR_Scripts/install_terminator.sh ~/RR_Scripts/upload_rr_env.sh ~/RR_Scripts/install_ros_noetic.sh`
	
***
2. Para instalar Visual Studio Code ejecutar el siguiente comando:

	`snap install code --classic`

***
3. Vamos a trabajar con el terminal Terminator. Para instalarlo solo hay que ejecutar el comando:
   
	`source ~/RR_Scripts/install_terminator.sh`

***
4. Instalar ROS Noetic siguiendo los pasos de la página web: http://wiki.ros.org/noetic/Installation/Ubuntu

Alternativamente se puede ejecutar el siguiente comando (tadavía no está testeado, pero hace lo mismo que pone en la página web)

	`source ~/RR_Scripts/install_ros_noetic.sh`
	
A partir de este punto se asume que en el equipo se encuentra instalado ROS Noetic y se ha cargado el entorno con la instrucción:

	source /opt/ros/noetic/setup.bash


***
5. Si es la primera vez que se instala el entorno de Roborescue se procederá a crear el workspace y preparar el entorno de Roborescue ejecutando la siguiente instrucción

	`source ~/RR_Scripts/install_rr_env.sh`
	



## INSTRUCCIONES DE USO DIARIO

***
6. Cada vez que se quiera cargar el entorno Roborescue se ejecutará la siguiente instrucción:

	`source ~/RR_Scripts/upload_rr_env.sh`

Esto cargará el workspace de Roborescue para su uso y lanzará un máster de ROS en una terminal independiente.

***
7. Para construir paquetes nuevos dentro del workspace de Roborescue usaremos la siguiente instrucción:

	`source ~/RR_Scripts/build_ros_package.sh`
	<center></center>





