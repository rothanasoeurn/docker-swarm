# Security Group

### Open port in inbound

- HTTP
  - tcp:80
- HTTPS
  - tcp:443
- SSH
  - SSH:22
- Docker swarm
  - `TCP:2377` or communication with and between manager nodes
  - `TCP/UDP:7946` for overlay network node discovery
  - `UDP:4789` (configurable) for overlay network traffic
- Portainer
  - `TCP:9000` to access http portainer
  - `TCP:9443` to access https portainer
  - `TCP:9001` for the Portainer Agent container to communicate with the Portainer Server instance and provide access to the node's resources.
- Port for application host
  - `TCP:8080`
  - `TCP:8081`
