#!/usr/bin/env bash
set -eu

## Installs the AWS CLI

source init-sw-paths.sh

# install AWS CLI v2 in $WORK/.local/aws-cli
cd "$WORK"
mkdir .local/bin
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install -i "$WORK/.local/aws-cli" -b "$WORK/.local/bin"

rm awscliv2.zip
rm -r aws
