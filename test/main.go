package main

import (
	"fmt"
	"os/exec"
	"runtime"
)

func main() {
	// Obtener el sistema operativo
	os := runtime.GOOS
	// Obtener la arquitectura
	arch := runtime.GOARCH

	// Ejecutar el comando 'hostname' para obtener el nombre del host
	cmd := exec.Command("hostname")
	output, err := cmd.Output()
	if err != nil {
		fmt.Printf("Error ejecutando el comando 'hostname': %v\n", err)
		return
	}

	// Convertir la salida a string y eliminar el salto de línea
	host := string(output)
	host = host[:len(host)-1]

	// Imprimir la información del sistema en un formato bonito
	fmt.Printf("Ejecución correcta desde:\n")
	fmt.Printf("Sistema Operativo: %s\n", os)
	fmt.Printf("Arquitectura: %s\n", arch)
	fmt.Printf("Nombre del Host: %s\n", host)
}
