# Script for demo

## Remote Server

- Remote access by Public IP

  ```sh
  ssh -i "/localPath/your_ssh.pem" username@ip
  ```

- Remote access by Public DNS
  ```sh
  ssh -i "/localPath/your_ssh.pem" username@dns
  ```

#### Create Folder and Copy File to Remote Server

- Create folder scripts

  ```sh
  ssh -i "/localPath/your_ssh.pem" ubuntu@127.0.0.1 "mkdir -p scripts"
  ```

- Copy file to scripts folder
  ```sh
  scp -i "/localPath/your_ssh.pem" /localPath/install_docker.sh ubuntu@127.0.0.1:remote/path
  ```

## Set Up Docker Swarm

- Initial docker swarm

  ```sh
  docker swarm init
  ```

- Init docker swarm with assign IP

  ```sh
  docker swarm init --advertise-addr <MANAGER-IP>
  ```

- Join node as manager

  ```sh
  docker swarm join-token manager
  ```

- Join node as worker

  ```sh
  docker swarm join-token worker
  ```

## Deploy portainer stack

- Create docker network

  ```sh
  docker network create -d overlay --attachable proxy
  ```

- Create docker volume

  ```sh
  docker volume create portainer_data
  ```

- Deploy portainer

  ```sh
  docker stack deploy -c docker-compose.yml portainer-stack
  ```
