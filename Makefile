# Nombre de la imagen Docker (por defecto)
IMAGE_NAME ?= linux-golang

# Regla para construir la imagen Docker
build:
	@echo "Building $(IMAGE_NAME) Docker image..."
	docker build -t $(IMAGE_NAME) . && \
	echo "Creating dockcross script..." && \
	echo '#!/bin/bash' > ./$(IMAGE_NAME) && \
	echo 'docker run --rm -v "$$(pwd):/work" $(IMAGE_NAME) bash -c "$$@"' >> ./$(IMAGE_NAME) && \
	chmod +x ./$(IMAGE_NAME) && \
	echo "Script created successfully: ./$(IMAGE_NAME)"

# Regla por defecto
all: build