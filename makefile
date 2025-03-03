# Define variables
IMAGE_NAME = ubuntu
CONTAINER_NAME = my-container

# Docker build target
build:
	docker build -t $(IMAGE_NAME) .

# Docker run target
run:
	docker run -it --rm --name $(CONTAINER_NAME) $(IMAGE_NAME)

# Docker clean target (to stop/remove containers and images)
clean:
	docker rm -f $(CONTAINER_NAME) || true
	docker rmi -f $(IMAGE_NAME) || true

# Docker exec target (run a command in the running container)
exec:
	docker exec -it $(CONTAINER_NAME) bash

# Docker logs target (fetch logs from the running container)
logs:
	docker logs $(CONTAINER_NAME)



==================================================
"""
make build    # Build the Docker image
make run      # Run the Docker container interactively
make clean    # Clean up (remove container and image)
make exec     # Exec into the running container
make logs     # Get logs from the container

You can use make to automate the execution of Docker commands
by creating a Makefile in your project. A Makefile allows you 
to define targets (commands) that can be run by make with specific
instructions. You can include Docker build, run, and other 
Docker-related commands in the Makefile
"""
