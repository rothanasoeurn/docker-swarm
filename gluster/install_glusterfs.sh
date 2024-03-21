#!/bin/bash
sudo apt update
sudo apt install glusterfs-server glusterfs-client


sudo gluster peer probe <node2_ip> <node3_ip> ...  # Replace with IPs of other nodes
sudo gluster volume create myvolume replica 3 <brick1_path>:<brick1_name>  # Replace with actual paths and names


sudo systemctl start glusterd
sudo systemctl enable glusterd