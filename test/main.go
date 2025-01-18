package main

import (
	"fmt"
	"os/exec"
	"runtime"
)

func main() {
	// Get the operating system
	os := runtime.GOOS
	// Get the architecture
	arch := runtime.GOARCH

	// Execute the 'hostname' command to get the host name
	cmd := exec.Command("hostname")
	output, err := cmd.Output()
	if err != nil {
		fmt.Printf("Error executing 'hostname' command: %v\n", err)
		return
	}

	// Convert the output to a string and remove the newline
	host := string(output)
	host = host[:len(host)-1]

	// Print the system information in a nice format
	fmt.Printf("Successfully executed from:\n")
	fmt.Printf("Operating System: %s\n", os)
	fmt.Printf("Architecture: %s\n", arch)
	fmt.Printf("Host Name: %s\n", host)
}
