## Copy file

```sh
ssh -i "mac_ssh.pem" ubuntu@ip_machine "mkdir -p scripts"

scp -i "mac_ssh.pem" docker/install_docker.sh ubuntu@18.141.169.77:install_docker.sh

scp -i "mac_ssh.pem" stack/portainer-stack.yml ubuntu@47.129.35.209:portainer-stack.yml
```

## Manager01 (leader)

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@13.229.197.39
  ```

## Manager02

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@54.255.195.2
  ```

## Manager03

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@13.214.203.74
  ```

## Worker01

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@13.251.157.81
  ```

## Worker02

- Access by Public IP
  ```sh
  ssh -i "mac_ssh.pem" ubuntu@54.151.170.99
  ```
