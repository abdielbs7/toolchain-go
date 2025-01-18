FROM golang

ENV DEFAULT_DOCKCROSS_IMAGE=linux-golang

# Create working directory
WORKDIR /work

# Copy the project to the container
COPY . /work/

# Set environment variables for cross-compilation if needed
ENV GOARCH=amd64 \
    CGO_ENABLED=0
