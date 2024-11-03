# Configuracion de workspace para Windows 11

Este proyecto es un script de Powershell que aplica mi configuracion de tema de Windows 11 y otros programas de utilidad. La idea es que cada vez que instale Windows, pueda simplemente ejecutar este script y tener mi configuracion habitual lista.

## Como usar

1. Descarga el script de configuracion de tema y los archivos de configuracion necesarios.
2. Abre una consola de Powershell como administrador.
3. Ejecuta el script de configuracion de tema.

## Que se incluye en la configuracion

* Tema de Windows 11.
* Programas de utilidad:
	+ Chocolatey (para instalar paquetes de software).
	+ Git (control de versiones).
	+ Visual Studio Code (editor de codigo).
	+ Node.js (entorno de ejecucion de JavaScript).

## Que se incluye en el tema

* Iconos de carpeta personalizados.
* Fuentes y colores personalizados.
* Configuracion de la barra de tareas.
* Configuracion del menu Inicio.

## Instalacion (Acutalmente en beta)

* Para instalar el tema, ejecuta el siguiente comando en la consola de Powershell:
	+ `Invoke-WebRequest -Uri https://raw.githubusercontent.com/Jov-glitch/TIW-ROSE-PINE-11/main/tiw-rosepine-11.ps1 -OutFile tiw-rosepine-11.ps1`


## Credito


Este proyecto esta basado en el proyecto de [rosepine-theme-windows](https://github.com/darkthemer/rosepine-theme-windows) de darkthemer.

