FROM structurizr/lite:latest

# Instalar herramientas adicionales si necesitas
RUN apt-get update && apt-get install -y vim

# Montaje del workspace
VOLUME ["/usr/local/structurizr"]

# Exponer el puerto de Structurizr Lite
EXPOSE 8080

# No es necesario CMD, la imagen oficial ya tiene entrypoint configurado
