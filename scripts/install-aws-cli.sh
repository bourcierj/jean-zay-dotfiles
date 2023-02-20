#!/usr/bin/env bash

# move ~/.local dir to $WORK and make symbolic link
if [ -d "$HOME/.local" ] ; then
    mv "$HOME/.local" "$WORK"
else
    mkdir $WORK/.local
fi
ln -s "$WORK/.local" "$HOME"

# add home dirs to your path
cat << EOF > ~/.bash_profile
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
# set PATH so it includes user's private .local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
EOF

# install AWS CLI v2 in $WORK/.local/aws-cli
cd "$WORK"
mkdir .local/bin
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install -i "$WORK/.local/aws-cli" -b "$WORK/.local/bin"

rm awscliv2.zip
rm -r aws
