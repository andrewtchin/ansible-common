#!/usr/bin/env bash

mkdir -p /home/ubuntu/.ssh
chmod 0755 /home/ubuntu/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBomF94C/LF2lPOy0364FoCc2zCc+R/gLyrWa21sNFroP/mtUzDUfg83dbonOt3eHoPMNffVAjJdaM2ijiCjiiLEwnKtqzn+IXBP9pwl9Jl30uWur7GyVgRAuDq/Lik2yANNGOsegynghc0X7BW8qWu8yxDI4j4YB1A+421kA+CIXA4m4osmJSZ/j/FLK0NDaQoVMABLzKM7/Es9nUeCGkJ2iTBNJWi3wyjeKnGrmy7W8vraId954O2ajtwV8qVZOcGXTitYifctjBfC2DTIaXvUyMHWdbpXDvTry+QK6sYez5AfBi53o3Cv+g/BKO1mVnsPOZNyNcLL4TVyRpCq/d andrewtchin" > /home/ubuntu/.ssh/authorized_keys
chmod 0600 /home/ubuntu/.ssh/authorized_keys
