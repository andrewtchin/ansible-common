#!/usr/bin/env bash

echo "Cloning VIC"
echo "[ENTER] to clone vmware/vic instead of your fork"
read -p 'Enter your Github username: ' USERNAME
USERNAME=${USERNAME:-vmware}
git clone git@github.com:${USERNAME}/vic.git ~/go/src/github.com/vmware/vic

echo "Cloning govmomi"
git clone git@github.com:vmware/govmomi.git ~/go/src/github.com/vmware/govmomi
