# toolchain-go

**Streamline your Go development with this Docker setup.**

## Description

**toolchain-go** provides a consistent and efficient Go development environment based on Docker. Build, test, and deploy your Go applications quickly and easily.

## Requirements

* **Docker:** To build and run the images.
* **Make:** To automate build tasks.

## Project Structure

* **Dockerfile:** Defines the base Docker image.
* **Makefile:** Contains rules for building, cleaning, and running.
* **test:** A folder containing a [main.go] for testing.

## Installation

```bash
git clone https://github.com/abdielbs7/toolchain-go.git
cd toolchain-go
```

## Usage

1. Build the Docker image and generate the script:
    ```bash
    make
    ```
    This will create the Docker image and generate a script called `linux-golang`.

2. Compile the project:
    ```bash
    ./linux-golang "go build -o /work/info-os test/main.go"
    ```
    This will compile the project and save the binary in the current directory.

## Notes

- Ensure Docker has access to the working directory. On macOS and Windows systems, you can configure this in Docker Desktop -> Preferences -> Resources -> File Sharing.
- You can modify the Dockerfile and Makefile according to your specific needs.
- Technical Note: If you encounter an error similar to cannot find package, make sure you are in the correct directory before running the build command. For example:
Use the following command to change to the correct directory before compiling:
```bash
./linux-golang "cd <path-your-project> && go build -o /work/<binary-name>"
```

## Contributions

If you wish to contribute to this project, please open an issue or submit a pull request.

## License

This project is licensed under the terms of the Apache 2.0 license.

---

# toolchain-go

**Agiliza tu desarrollo Go con esta configuración Docker.**

## Descripción

**toolchain-go** proporciona un entorno de desarrollo de Go consistente y eficiente basado en Docker. Construye, prueba y despliega tus aplicaciones Go de forma sencilla y rápida.

## Requisitos

* **Docker:** Para construir y ejecutar las imágenes.
* **Make:** Para automatizar las tareas de construcción.

## Estructura del proyecto

* **Dockerfile:** Define la imagen Docker base.
* **Makefile:** Contiene las reglas para construir, limpiar y ejecutar.
* **test:** Una carpeta que contiene un [main.go] para pruebas.

## Instalación

```bash
git clone https://github.com/abdielbs7/toolchain-go.git
cd toolchain-go
```

## Uso

1. Construir la imagen Docker y generar el script:
    ```bash
    make
    ```
    Esto creará la imagen Docker y generará un script llamado `linux-golang`.

2. Compilar el proyecto:
    ```bash
    ./linux-golang "go build -o /work/info-os test/main.go"
    ```
    Esto compilará el proyecto y guardará el binario en el directorio actual.

## Notas

- Asegúrate de que Docker tenga acceso al directorio de trabajo. En sistemas macOS y Windows, puedes configurar esto en Docker Desktop -> Preferences -> Resources -> File Sharing.
- Puedes modificar el Dockerfile y el Makefile según tus necesidades específicas.
- Nota Técnica: Si encuentras un error similar a cannot find package, asegúrate de estar en el directorio correcto antes de ejecutar el comando de compilación. Por ejemplo:
Usa el siguiente comando para cambiar al directorio correcto antes de compilar:
```bash
./linux-golang "cd <path-your-project> && go build -o /work/<binary-name>"
```

## Contribuciones

Si deseas contribuir a este proyecto, por favor abre un issue o envía un pull request.

## Licencia

Este proyecto está licenciado bajo los términos de la licencia Apache 2.0.
