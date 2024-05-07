# INSTALACIÓN DE UBUNTU 20.04 EN UNA PARTICIÓN DEL ORDENADOR

En este documento se explica como podemos instalar el sistema operativo de Ubuntu junto a nuestro Windows para poder utilizarlo en el desarrollo de nuestro robot de rescate. Primero crearemos un espacio libre en nuestro ordenador, luego, descargaremos y prepararemos el USB para instalar Ubuntu y por último, lo instalaremos.

## Creación de la partición en Windows

Para crear la partición en la que instalaremos Ubuntu en nuestro ordenador, debemos seguir los siguientes pasos:

1. Hacer click derecho en el símbolo de Windows y seleccionar 
`Administración de discos`

2. Seleccionar en la parte de abajo de la ventana el espacio de disco que quieres reducir de tamaño y, con click derecho, seleccionar reducir volumen.

3. Aparece una ventana en la que eliges el tamaño en MegaBytes que quieres separar del espacio original. Lo normal es que se elija un espacio entre 30 y 50 GigaBytes para nuestra instalación de Ubuntu.

## Configuración de un USB para contener el instalador de Ubuntu 20.04

Para esta parte, necesitaremos la imagen ISO de `Ubuntu 20.04` y el programa `Rufus`. Para ello utilizamos los siguientes enlaces:

- https://releases.ubuntu.com/focal/ubuntu-20.04.6-desktop-amd64.iso
- https://github.com/pbatard/rufus/releases/download/v4.4/rufus-4.4.exe

Cuando tenemos descargados ambas cosas, ejecutamos rufus y conectamos al ordenador un USB que será el que tendrá el instalador de `Ubuntu 20.04`. Este USB debe estar vacío y tener unos 10 GB de memoria mínimo (Esto es espacio de sobra pero es mejor). 

1. Ejecutamos el programa rufus.

2. Dentro del programa, hacemos click en `SELECCIONAR`, elegimos la imagen ISO de Ubuntu y el USB y escogemos el Tamaño de partición de unos 10 GB.

3. Pulsamos en Empezar para formatear el USB.

Una vez terminado vamos a acceder a la BIOS del ordenador.

## Abrir la BIOS para cambiar el orden de arranque

Ahora debemos cambiar el orden de arranque del ordenador para que en vez de arrancar desde el disco de Windows, arranque desde nuestro USB. Para ello tenemos que entrar en la BIOS:

1. Creamos en el escritorio un nuevo acceso directo.

2. Como dirección escribimos `shutdown /r /fw /t 1`. Como nombre ponemos lo que queramos. Tras crearlo entramos en propiedades y en `Opciones avanzadas` activamos `Ejecutar como administrador`. Esto creará un icono en el escritorio que, al pulsarlo, reiniciará el ordenador y nos meterá en la BIOS.

3. Estando en la BIOS debemos cambiar el orden de arranque para que el ordenador inicie ahora desde nuestro USB, para ello debemos colocar nuestro USB en primer lugar. Además, debemos asegurarnos de que el arranque seguro está apagado, ya que esto puedo generar que Ubuntu no se pueda conectar a ninguna red inalámbrica.

4. Salimos de la BIOS y el ordenador comenzará la instalación de Ubuntu.


## Instalación de Ubuntu 20.04

En la instalación de Ubuntu nos aparecerán ventanas una detrás de otra, en estas debemos escoger lo siguiente:

1. Ventana de Idioma: Seleccionamos el idioma a usar y hacemos click en `Instalar Ubuntu`.

2. Ventana de Disposición del teclado: Elegimos la distribución de nuestro teclado.

3. Ventana de Actualizaciones y Otros Softwares: Elegimos la `Instalación normal`, seleccionamos `Instalar programas de terceros ...` y nos aseguramos de que NO está seleccionada la opción `Descargar actualizaciones al instalar Ubuntu`, ya que esto nos instalaría las últimas versiones de Ubuntu.

4. Ventana de Tipo de Instalación: Seleccionamos `Instalar Ubuntu junto a Windows Boot Manager` y hacemos click en instalar ahora.

5. Ventanas de Formulario: En estas ventanas defines tu zona horaria y tu usuario y contraseña para tu sistema Ubuntu.

Una vez hecho todo esto, la instalación comenzará y ya tendrás instalado Ubuntu.


## Cambiar entre Ubuntu y Windows

Teniendo ya instalado Ubuntu 20.04, cambiar entre los sistemas operativos es muy sencillo. Simplemente reiniciamos el ordenador, al arrancar, el propio ordenador nos pregunta si queremos entrar en Ubuntu o en Windows.
