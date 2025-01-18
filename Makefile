# Default Docker image name
IMAGE_NAME ?= linux-golang

# Rule to build the Docker image on Unix (Linux/macOS)
unix:
	@echo "Building $(IMAGE_NAME) Docker image..."
	docker build -t $(IMAGE_NAME) . && \
	echo "Creating Unix dockcross script..." && \
	echo '#!/bin/bash' > ./$(IMAGE_NAME) && \
	echo 'docker run --rm -v "$$(pwd):/work" $(IMAGE_NAME) bash -c "$$@"' >> ./$(IMAGE_NAME) && \
	chmod +x ./$(IMAGE_NAME) && \
	echo "Script created successfully: ./$(IMAGE_NAME)"

# Rule to build the Docker image on Windows
windows:
	@echo Building $(IMAGE_NAME) Docker image...
	docker build -t $(IMAGE_NAME) . && \
	echo Creating Windows dockcross script... && \
	echo @echo off > $(IMAGE_NAME).bat && \
	echo docker run --rm -v %cd%:/work $(IMAGE_NAME) bash -c %%* >> $(IMAGE_NAME).bat && \
	echo Script created successfully: $(IMAGE_NAME).bat
