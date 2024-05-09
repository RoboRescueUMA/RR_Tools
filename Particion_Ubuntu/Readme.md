## INSTALACIÓN DE UBUNTU 20.04 EN UNA PARTICIÓN DEL ORDENADOR

En este documento se explica como podemos instalar el sistema operativo de Ubuntu junto a nuestro Windows para poder utilizarlo en el desarrollo de nuestro robot de rescate. Primero crearemos un espacio libre en nuestro ordenador, luego, descargaremos y prepararemos el USB para instalar Ubuntu y por último, lo instalaremos.

## Creación de la partición en Windows

Para crear la partición en la que instalaremos Ubuntu en nuestro ordenador, debemos seguir los siguientes pasos:

1. Entrar en la aplicación "Crear y formatear particiones del disco duro" que verás al escribir "particiones en el menú de inicio

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/775ed4a2-5931-418b-9d67-d1dbb71cbf25)


2. Seleccionar en la ventana el espacio de disco que quieres reducir de tamaño y, con click derecho, seleccionar reducir volumen.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/6451afa6-0a3f-4ae8-af90-a7f7268445f6)


3. Aparece una ventana en la que eliges el tamaño en MegaBytes que quieres separar del espacio original. Lo normal es que se elija un espacio entre 30 y 50 GigaBytes para nuestra instalación de Ubuntu.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/483702e7-71a4-47c4-9fbd-f3e0c4b0f15d)


## Configuración de un USB para contener el instalador de Ubuntu 20.04

Para esta parte, necesitaremos la imagen ISO de `Ubuntu 20.04` y el programa `Rufus`. Para ello utilizamos los siguientes enlaces:

- https://releases.ubuntu.com/focal/ubuntu-20.04.6-desktop-amd64.iso


- https://github.com/pbatard/rufus/releases/download/v4.4/rufus-4.4.exe

Cuando tenemos descargados ambas cosas, ejecutamos rufus y conectamos al ordenador un USB que será el que tendrá el instalador de `Ubuntu 20.04`. Este USB debe estar vacío y tener unos 10 GB de memoria mínimo (Esto es espacio de sobra pero es mejor). 

1. Ejecutamos el programa rufus.

2. Dentro del programa, hacemos click en `SELECCIONAR`, elegimos la imagen ISO de Ubuntu y el USB que utilizaremos como USB de arranque.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/9c16c501-5c74-40bc-a0c6-c80089453499)

3. Pulsamos en Empezar para formatear el USB.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/4278dc78-8fe0-4527-a060-e445587098bc)


Quizá te aparezcan una serie de ventanas con mensajes de aviso, a continuación se explica lo que significa cada mensaje:

·Cuando pulses en Empezar, Rufus te lanzará un aviso diciéndote que la versión del gestor de arranque syslinux que utiliza es más antigua que la que solicita la ISO. Por lo que debes pulsar el botón Sí para que Rufus se conecte a Internet y descargue automáticamente la versión que necesita.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/7e16c3b8-5a1c-41d1-afb9-9932d5c1e4d0)

·Tras ese trámite, te aparecerá otra ventana en la que se informa de que la ISO que has descargado puede ser escrita de dos maneras en tu USB. Aquí, lo recomendable es que dejes seleccionada la opción Escribir en modo Imagen ISO y pulsas el botón OK.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/058d907f-6cd4-40ea-83b2-cf6c590e85d9)

·Y por último, Rufus te advertirá de que al realizar este proceso perderás todos los datos que tengas en el USB que vayas a utilizar. Si estás conforme, pulsa en el botón Aceptar y se empezará a preparar el USB de arranque. Espera a que termine, y una vez se complete el proceso ya podrás sacar el USB y arrancar con él el nuevo ordenador.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/27175e0f-65c1-4c34-8c15-25f57ea1515a)


Una vez terminado vamos a acceder a la BIOS del ordenador.

## Abrir la BIOS para cambiar el orden de arranque

Ahora debemos cambiar el orden de arranque del ordenador para que en vez de arrancar desde el disco de Windows, arranque desde nuestro USB. Para ello tenemos que entrar en la BIOS e indicar la nueva unidad de arranque.
1. Mete el USB en una ranura
2. Enciende el ordenador pulsando inmediatamente la tecla que ejecute el selector de unidad para el arranque. Por lo general esta debería ser F12, pero dependiendo de la BIOS y el PC pueden ser otras como F1, F8, F9, F10, TAB o ESC.
   - Si no conoces la tecla que debes pulsar, un modo más sencillo es crear en el escritorio un acceso directo, en dirección escribimos `shutdown /r /fw /t 1`, pulsamos siguiente y en nombre ponemos lo que queramos y pulsamos finalizar. Por último, con click derecho en el acceso directo, entramos en `Propiedades` y, en `opciones avanzadas`, elegimos ejecutar como administrador. Con esto, al ejecutarlo, reiniciará el ordenador y nos meterá en la BIOS automáticamente sin pulsar ninguna tecla.
4. Cuando veas el menú, selecciona la unidad del USB de arranque y pulsa Enter para arrancar el ordenador a través de él. Cada BIOS es distinta, así que modificar el orden de arranque del ordenador puede cambiar de un ordenador a otro.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/490d9234-aa31-4ba4-a45e-a3dfbd2666c5)


Es muy importante que nos aseguremos de que el `Arranque Seguro` está apagado, ya que esto puede generar que Ubuntu no se pueda conectar a ninguna red inalámbrica.

4. Salimos de la BIOS y el ordenador comenzará la instalación de Ubuntu.


## Instalación de Ubuntu 20.04

En la instalación de Ubuntu nos aparecerán ventanas una detrás de otra, en estas debemos escoger lo siguiente:

1. Ventana de Idioma: Seleccionamos el idioma a usar y hacemos click en `Instalar Ubuntu`.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/1e66f371-ac0b-4965-9e51-647ceeb355ab)

2. Ventana de Disposición del teclado: Elegimos la distribución de nuestro teclado.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/929b0d26-2026-4ba0-ac69-b26954f47f7f)

3. Ventana de Actualizaciones y Otros Softwares: Elegimos la `Instalación normal`, seleccionamos `Instalar programas de terceros ...` y nos aseguramos de que NO está seleccionada la opción `Descargar actualizaciones al instalar Ubuntu`, ya que esto nos instalaría las últimas versiones de Ubuntu.

![image](https://github.com/RoboRescueUMA/RR_Tools/assets/129277489/62f01a2f-728c-4683-8062-690977c84e6d)

4. Ventana de Tipo de Instalación: Seleccionamos `Instalar Ubuntu junto a Windows Boot Manager` y hacemos click en instalar ahora.

5. Ventanas de Formulario: En estas ventanas defines tu zona horaria y tu usuario y contraseña para tu sistema Ubuntu.

Una vez hecho todo esto, la instalación comenzará y ya tendrás instalado Ubuntu.


## Cambiar entre Ubuntu y Windows

Teniendo ya instalado Ubuntu 20.04, cambiar entre los sistemas operativos es muy sencillo. Simplemente reiniciamos el ordenador, al arrancar, el propio ordenador nos pregunta si queremos entrar en Ubuntu o en Windows.

## ENLACES DE INTERÉS
https://www.xataka.com/basics/como-instalar-linux-a-windows-10-ordenador
https://www.youtube.com/watch?v=Hn8IXfQ94-0
