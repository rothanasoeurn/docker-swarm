## Copy file

```sh
ssh -i "mac_ssh.pem" ubuntu@ip_machine "mkdir -p scripts"

scp -i "mac_ssh.pem" docker/install_docker.sh ubuntu@18.141.169.77:install_docker.sh

scp -i "mac_ssh.pem" stack/portainer-stack.yml ubuntu@47.129.35.209:portainer-stack.yml
```

## Manager01 (leader)

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@13.250.97.62
  ```

## Manager02

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@13.215.161.57
  ```

## Manager03

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@13.214.203.74
  ```

## Worker01

- Access by Public IP

  ```sh
  ssh -i "mac_ssh.pem" ubuntu@18.143.76.105
  ```

## Worker02

- Access by Public IP
  ```sh
  ssh -i "mac_ssh.pem" ubuntu@13.215.190.83
  ```
