
#   Utilizamos la capa FROM para descargar nuestra imagen, la imagen se llama "ubuntu" y usamos la etiqueta o tag "latest"
# para que nos descargue la ultima version
FROM ubuntu:latest 

#   Usamos RUN para que ejecute un comando dentro de la imagen
#   apt update = actualiza los archivos del ubuntu
#   apt install -y python3 = instala python3 sin nuestra atencion (-y)
RUN apt update && apt install -y python3

#   Copiamos dentro de la imagen nuestro fichero que creamos anteriormente
#   El fichero se llama app.py y va a la ruta app.py
COPY app.py /app.py

#   Ejecutar el siguiente archivo dentro del shell "python3"
CMD ["pythoh3","app.py"]

# UNA VEZ QUE TENEMOS EL DOCKERFILE CONSTRUIDO LO EJECUTAMOS DESDE LA CONSOLA CON EL SIGUIENTE COMANDO 
#   docker build -t app-python:latest .

    # --> docker build = Comando para construir la imagen
    # --> -t = Este comando es para ponerle una etiqueta a la imagen (app-python:latest en el ejemplo)
    # --> . = El punto se pone cuando el dockerfile se encuentra en el mismo directorio que estamos escribiendo el comando,
    #         de lo contrario ponemos la direccion del dockerfile

# EN EL CASO QUE EL NOMBRE DE NUESTRO CONSTRUCTOR NO SEA DOCKERFILE Y SEA POR EJEMPLO DOCKERFILE-APP-PYTHON3 EL COMANDO QUEDARIA ASI
#   docker build -t app-python:latest -f Dockerfile-app-python3 .

    # --> docker build = Comando para construir la imagen
    # --> -t = Este comando es para ponerle una etiqueta a la imagen (app-python:latest en el ejemplo)
    # --> -f = Este comando le indica que vamos a escribir el nombre del constructor porque no es Dockerfile
    #          Generalmente la -f se usa para forzar una instruccion que se ejecute si o si, en este caso es forzar la ejecucion del archivo con otro nombre que no es Dockerfile
    # --> Dockerfile-app-python3 = Nombre del constructor
    # --> . = El punto se pone cuando el dockerfile se encuentra en el mismo directorio que estamos escribiendo el comando,
    #         de lo contrario ponemos la direccion del dockerfile
    
