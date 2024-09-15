Para ejecutar localmente la aplicación Virtual Wallet se deben seguir los siguientes pasos:
  1) Descargar e instalar Docker Desktop (https://docs.docker.com/get-started/get-docker/) para cualquier sistema operativo o Docker Engine para Linux (https://docs.docker.com/engine/install/).
  2) Descargar e instalar Git (https://git-scm.com/downloads)
  3) Crear o elegir un directorio en tu PC y abrir una terminal desde allí.
  4) Abrir Docker Desktop en caso de haberlo instalado.
  5) Luego ejecutar estos 3 comandos:
     
    git clone https://github.com/emilianomartinezfoschi/docker_virtualwallet.git    

    cd docker_virtualwallet
    
    docker-compose up

El proceso durará varios minutos y es necesario descargar alrededor de 1Gb de recursos.
     
  7) Una vez que el proceso termine y el contenedor esté corriendo, ir a "http://localhost:8000/" en tu navegador para usar la aplicación.
  8) Para detener la aplicación ejecuta:
     
    docker-compose down

  9) Si quieres eliminar la aplicación y todos sus componentes usa este comando:
      
    docker-compose down --volumes --rmi all
      
  10) Además, para borrar el repositorio clonado vuelve al directorio a donde se copió con "cd .." y ejecuta para Windows

    rmdir /s /q docker_virtualwallet

  ó para Linux

    rm -rf docker_virtualwallet

-----------------------------------------------------------------

To run the Virtual Wallet application locally, follow these steps:
  1) Download and install Docker Desktop (https://docs.docker.com/get-started/get-docker/) for any operating system or Docker Engine for Linux (https://docs.docker.com/engine/install/).
  2) Download and install Git (https://git-scm.com/downloads).
  3) Create or select a directory on your PC and open a terminal from there.
  4) Open Docker Desktop if you have installed it.
  5) Then, run these 3 commands:

    git clone https://github.com/emilianomartinezfoschi/docker_virtualwallet.git

    cd docker_virtualwallet
     
    docker-compose up

The process will take several minutes, and about 1GB of resources will be downloaded.

  7) Once the process is finished and the container is running, go to "http://localhost:8000/" in your browser to use the application.
  
  8) To stop the application, run:

    docker-compose down
  
  9) If you want to remove the application and all its components, use this command:

    docker-compose down --volumes --rmi all
  10) Additionally, to delete the cloned repository, go back to the directory where it was copied with "cd .." and run for Windows
      
    rmdir /s /q docker_virtualwallet
      
or for Linux
      
    rm -rf docker_virtualwallet
