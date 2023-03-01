#!/usr/bin/env bash
set -eu

# download Miniconda installer
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

# install Miniconda in the WORK space
MINICONDA_PATH="$WORK/miniconda3"
chmod +x miniconda.sh && ./miniconda.sh -b -p "$MINICONDA_PATH"

# make sure conda is up-to-date
source "$MINICONDA_PATH/etc/profile.d/conda.sh"
conda update --yes conda

# Update your .bashrc to initialise your conda base environment on each login
conda init
