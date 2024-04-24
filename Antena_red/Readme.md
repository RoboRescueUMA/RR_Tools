

# CONFIGURACIÓN DE LA ANTENA DE RED DE UN PC CON UBUNTU 20.04 

## Dispositivos Compatibles
<details>
  <summary>
    ASUS
  </summary>

* ASUS AC1300 USB-AC55 B1
* ASUS U2
* ASUS USB-AC53 Nano
* ASUS USB-AC58
</details>

<details>
  <summary>
    Dlink
  </summary>

* Dlink - DWA-181
* Dlink - DWA-182
* Dlink - DWA-183 D Version
* Dlink - DWA-185
* Dlink - DWA-T185
</details>

<details>
  <summary>
    Edimax
  </summary>

* Edimax EW-7822ULC
* Edimax EW-7822UTC
* Edimax EW-7822UAD
</details>

<details>
  <summary>
    NetGear
  </summary>

* NetGear A6150
</details>

<details>
  <summary>
    TP-Link
  </summary>

* TP-Link Archer T3U
* TP-Link Archer T3U Plus
* TP-Link Archer T3U Nano
* TP-Link Archer T4U V3
* TP-Link Archer T4U Plus
</details>

<details>
  <summary>
    TRENDnet
  </summary>

* TRENDnet TEW-808UBM
</details>

<details>
  <summary>
    ZYXEL
  </summary>

* ZYXEL NWD6602
</details>


Y más aún.

## Configuración

Para configurar la antena de red en una torre y poder utilizarla, hay que seguir los siguientes pasos:

1. Descargar el archivo ZIP que viene en este enlace:

`https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbEJIdzFMRzNySDVWMWpiTHJTbHA3SjNDWm5ZQXxBQ3Jtc0ttWjg3U1dyb1I5dU16SzREOTktYTZSWDVoZ1E1cW1CT0U4ZnMwSWVtQnU2bTlaTUtGZ0JtclhUeHBCN1pXQUxBS0Y1VlJVR0Y4NjVjQ2V4alZ1UW5MenBjTFM3RDVSdnllb3huUDhjU1FQX0xGMUExbw&q=https%3A%2F%2Fgithub.com%2FRinCat%2FRTL88x2BU-Linux-Driver%2Farchive%2Fmaster.zip&v=Yp0PbTZ43K0`

2. A continuación, abrimos un terminal y ejecutamos los dos comandos siguientes:

        sudo apt update
        sudo apt install git linux-headers-generic dkms

3. Descomprimimos en la carpeta personal el archivo ZIP que hemos descargado y luego abrimos un terminal en el directorio descomprimido usando:

        cd RTL88x2BU-Linux-Driver-master

4. Por último, ya solo queda hacer uno por uno cada uno de los comandos siguientes y ya tendríamos funcionando nuestra antena:
    
        sudo make uninstall
        make clean
        make
        sudo make install
        sudo modprobe 88x2bu
        sudo reboot



