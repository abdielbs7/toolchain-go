FROM golang

ENV DEFAULT_DOCKCROSS_IMAGE=linux-armv5-golang-rm8

# Crear directorio de trabajo
WORKDIR /work

# Copia el proyecto al contenedor
COPY . /work/

# Establecer variables de entorno para la compilación cruzada si la nesesitas
ENV GOARCH=amd64 \
    CGO_ENABLED=0
