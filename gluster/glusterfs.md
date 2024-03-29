# EC2 with glusterfs

## Prerequisites:

- An AWS account with an EC2 instance running Ubuntu.
- Docker installed on all swarm nodes.
- GlusterFS packages installed on all swarm nodes. You can install them using:

```bash
sudo apt update
sudo apt install glusterfs-server glusterfs-client
```

## Steps:

### 1. Configure EC2 Security Group:

- Make sure your EC2 security group allows inbound traffic on **ports 22** (SSH), `2400-2402` (GlusterFS), and any ports your Docker containers use.

### 2. Initialize GlusterFS:

- Choose one node as the "seed" node and initialize GlusterFS on it:

```bash
sudo gluster peer probe <node2_ip> <node3_ip> ...  # Replace with IPs of other nodes
sudo gluster volume create myvolume replica 3 <brick1_path>:<brick1_name>  # Replace with actual paths and names
#Sample
sudo gluster volume create docker-swarm-volume replica 3 manager01:/gluster/volumes
```

- Replace `<node2_ip>`, `<node3_ip>`, `<brick1_path>`, and `<brick1_name>` with the actual IP addresses of other nodes, a directory path to be used as a brick on each node, and a name for the brick.

### 3. Start GlusterFS Service:

- Start the GlusterFS service on all nodes:

```Bash
sudo systemctl start glusterd
sudo systemctl enable glusterd
```

### 4. Create Docker Swarm:

Initialize a swarm master node:

```Bash
docker swarm init
```

- Join worker nodes to the swarm using the provided command from the swarm master output.

### 5. Run GlusterFS Volume in Docker Swarm:

- Create a Docker volume based on the GlusterFS volume:

```Bash
docker volume create --driver gluster --opt gluster.volume=myvolume my-gluster-volume
```

- Replace myvolume with the name you used while creating the GlusterFS volume.

### 6. Run Your Dockerized Application:

- When deploying your Docker application in the swarm, mount the GlusterFS volume to the container(s) that need shared storage.

**Here are some additional resources that you might find helpful:**

- Setting up GlusterFS: https://access.redhat.com/products/red-hat-storage/
- Docker Swarm with GlusterFS: https://github.com/mikebarkmin/docker-volume-glusterfs (This guide uses a different volume driver setup)
- Docker documentation on volumes: https://docs.docker.com/storage/volumes/

**Remember to replace placeholders like `<node_ip>`, `<brick_path>`, and `<brick_name>` with your actual values.**

Note: This is a general guide, and the specific steps might vary depending on your environment and desired configuration. Make sure to consult the official documentation for detailed instructions and troubleshooting.

GitHub
GitHub - mikebarkmin/docker-volume-glusterfs: This is a managed Docker volume plugin to allow Docker containers to access GlusterFS volumes.

This is a managed Docker volume plugin to allow Docker containers to access GlusterFS volumes. - mikebarkmin/docker-volume-glusterfs
