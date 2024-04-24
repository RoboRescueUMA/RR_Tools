# ROS_TELECO

En este repositorio está el paquete *ros_teleco*, el cual consta de cuatro nodos: 
publisher_1, publisher_2, subscriber_1, subscriber_2. Este paquete permite a establecer dos líneas de comunicación por mensajes de texto.

La arquitectura de comunicación son dos líneas separadas en las que:

* publisher_1 publica mensajes de texto en topic_1, y estos son leídos por subscriber_1.

* publisher_2 publica mensajes de texto en topic_2, y estos son leídos por subscriber_2.

*Insertar imagen

## Uso básico

### Instalación del paquete

Descargar el paquete y guardarlo en la carpeta src de tu workspace de ROS (~/rr_ros_ws/src).

Ir a la carpeta principal del workspace y ejecutar:
    
    catkin_make ros_teleco
    source devel/setup.bash

### Uso diario del paquete

El paquete ya está listo para ser usado. Los nodos se lanzan de la siguiente manera:

    rosrun ros_teleco publisher_1

Cuando lanzas en dos terminales diferentes un publisher y su subscriber correspondiente, puedes escribir mensajes en el publisher y leerlos en el subscriber.

Por ejemplo, abramos tres terminales. En el primero se lanza el *roscore*:

    roscore

En el segundo:

    rosrun ros_teleco publisher_1

En el tercero:

    rosrun ros_teleco subscriber_1

Ahora podemos escribir en el terminal de publisher y al pulsar *Enter* aparecerá el mensaje en el subscriber.



## Telecomunicación entre varios ordenadores

Se pueden comunicar varios ordenadores al mismo tiempo utilizando ROS. Para ello, uno de los ordenadores lanza el *roscore* y el resto deben configurar sus dispositivos para buscar el *roscore* de ese ordenador maestro.

Pongamos el ejemplo con este paquete y solo dos ordenadores:

El ordenador 1 será el master, y deberá añadir al final de su archivo .bashrc (en el directorio ~) el siguiente código:

    export ROS_MASTER_URI=http://<IP_1>:11311
    export ROS_IP=<IP_1>

El ordenador 2 deberá hacer lo mismo, pero indicando en la dirección del master la del ordenador 1:

    export ROS_MASTER_URI=http://<IP_1>:11311
    export ROS_IP=<IP_2>

NOTA: Sustituir <IP_1> e <IP_2> por las direcciones ip de los ordenadores. Ejemplo:

    export ROS_MASTER_URI=http://192.168.1.55:11311
    export ROS_IP=192.168.1.55

Una vez se añade el código al archivo .bashrc, cerrar todos los terminales y abrir unos nuevos. En el ordenador 1 ejecutar el *roscore*, el *publisher_1* y el *subscriber_2*. En el ordenador 2 ejecutar el *publisher_2* y el *subscriber_1*. Ya está todo preparado y ambos ordenadores pueden enviarse mensajes.