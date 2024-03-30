## Copy file

```sh
ssh -i "your_ssh_key.pem" ubuntu@[server_ip] "mkdir -p scripts"

scp -i "your_ssh_key.pem" docker/install_docker.sh ubuntu@[server_ip]:install_docker.sh

scp -i "your_ssh_key.pem" stack/portainer-stack.yml ubuntu@[server_ip]):portainer-stack.yml
```

## Manager01 (leader)

- Access by Public IP

  ```sh
  ssh -i "your_ssh_key.pem" ubuntu@[server_ip]
  ```

## Manager02

- Access by Public IP

  ```sh
  ssh -i "your_ssh_key.pem" ubuntu@[server_ip]
  ```

## Manager03

- Access by Public IP

  ```sh
  ssh -i "your_ssh_key.pem" ubuntu@[server_ip]
  ```

## Worker01

- Access by Public IP

  ```sh
  ssh -i "your_ssh_key.pem" ubuntu@[server_ip]
  ```

## Worker02

- Access by Public IP
  ```sh
  ssh -i "your_ssh_key.pem" ubuntu@[server_ip]
  ```
