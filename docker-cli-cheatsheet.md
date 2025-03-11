# Docker CLI Cheatsheet

## Managing Docker Containers
- List running containers:  
  ```sh
  docker ps
  ```
- List all containers (including stopped):  
  ```sh
  docker ps -a
  ```
- Start a container:  
  ```sh
  docker start <container_id>
  ```
- Stop a container:  
  ```sh
  docker stop <container_id>
  ```
- Restart a container:  
  ```sh
  docker restart <container_id>
  ```
- Remove a container:  
  ```sh
  docker rm <container_id>
  ```
- Remove all stopped containers:  
  ```sh
  docker container prune
  ```

## Managing Docker Images
- List images:  
  ```sh
  docker images
  ```
- Pull an image:  
  ```sh
  docker pull <image_name>
  ```
- Remove an image:  
  ```sh
  docker rmi <image_name>
  ```
- Remove all unused images:  
  ```sh
  docker image prune
  ```

## Running Containers
- Run a container interactively:  
  ```sh
  docker run -it <image_name> /bin/bash
  ```
- Run a container in the background (detached mode):  
  ```sh
  docker run -d <image_name>
  ```
- Run a container and auto-remove it after exit:  
  ```sh
  docker run --rm <image_name>
  ```
- Run a container with a specific name:  
  ```sh
  docker run --name <container_name> <image_name>
  ```

## Docker Volumes and Networks
- List volumes:  
  ```sh
  docker volume ls
  ```
- Create a volume:  
  ```sh
  docker volume create <volume_name>
  ```
- Remove a volume:  
  ```sh
  docker volume rm <volume_name>
  ```
- List networks:  
  ```sh
  docker network ls
  ```
- Create a network:  
  ```sh
  docker network create <network_name>
  ```
- Connect a container to a network:  
  ```sh
  docker network connect <network_name> <container_name>
  ```
- Disconnect a container from a network:  
  ```sh
  docker network disconnect <network_name> <container_name>
  ```

## Viewing Logs and Stats
- View container logs:  
  ```sh
  docker logs <container_id>
  ```
- Follow real-time logs:  
  ```sh
  docker logs -f <container_id>
  ```
- Show running processes in a container:  
  ```sh
  docker top <container_id>
  ```
- Show container resource usage:  
  ```sh
  docker stats
  ```

## Executing Commands in Containers
- Execute a command in a running container:  
  ```sh
  docker exec <container_id> <command>
  ```
- Start an interactive shell in a running container:  
  ```sh
  docker exec -it <container_id> /bin/bash
  ```

## Cleaning Up
- Remove all stopped containers, unused networks, and dangling images:  
  ```sh
  docker system prune
  ```
- Remove everything (containers, images, networks, volumes):  
  ```sh
  docker system prune -a --volumes
  ```

## Docker Compose (Basic Commands)
- Start services in `docker-compose.yml`:  
  ```sh
  docker-compose up -d
  ```
- Stop services:  
  ```sh
  docker-compose down
  ```
- View logs:  
  ```sh
  docker-compose logs
  ```
- Restart services:  
  ```sh
  docker-compose restart
  ```

## Dockerfile Commands
- Set base image:  
  ```dockerfile
  FROM <image_name>
  ```
- Set environment variable:  
  ```dockerfile
  ENV <key>=<value>
  ```
- Copy files into the container:  
  ```dockerfile
  COPY <source> <destination>
  ```
- Set working directory:  
  ```dockerfile
  WORKDIR <directory>
  ```
- Run a command during build:  
  ```dockerfile
  RUN <command>
  ```
- Define the default command to run in the container:  
  ```dockerfile
  CMD ["executable", "arg1", "arg2"]
  ```
- Define the entrypoint for the container:  
  ```dockerfile
  ENTRYPOINT ["executable", "arg1"]
  ```
- Expose a port:  
  ```dockerfile
  EXPOSE <port>
  ```
- Define a mountable volume:  
  ```dockerfile
  VOLUME ["/data"]
  ```
- Specify a user to run the container as:  
  ```dockerfile
  USER <username>
  ```

