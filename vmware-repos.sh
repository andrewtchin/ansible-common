#!/usr/bin/env bash

echo "Cloning VIC"
echo "[ENTER] to clone vmware/vic instead of your fork"
read -p 'Enter your Github username: ' USERNAME
USERNAME=${USERNAME:-vmware}
git clone git@github.com:${USERNAME}/vic.git ~/go/src/github.com/vmware/vic

cd ~/go/src/github.com/vmware/vic
git remote add upstream git@github.com:vmware/vic.git
curl https://cdn.rawgit.com/tommarshall/git-good-commit/v0.6.1/hook.sh > .git/hooks/commit-msg && chmod +x .git/hooks/commit-msg

echo "Cloning govmomi"
git clone git@github.com:vmware/govmomi.git ~/go/src/github.com/vmware/govmomi
cd ~/go/src/github.com/vmware/govmomi
git remote add upstream git@github.com:vmware/govmomi.git
