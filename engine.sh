#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker to run this script."
    exit 1
fi

# Check if the script is run with the correct number of arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <docker_image> <arg1> <arg2>"
    exit 1
fi

# Store the arguments in variables
docker_image=$1
arg1=$2
arg2=$3

# Run the command inside the Docker container
sudo docker run --rm $docker_image <command> $arg1 $arg2
