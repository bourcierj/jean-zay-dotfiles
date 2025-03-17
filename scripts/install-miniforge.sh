#!/usr/bin/env bash
set -eu

# Download installer
wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"

# Run installer, set path to WORK space
MINIFORGE_PATH="${WORK}/miniforge3"
bash Miniforge3.sh -b -p "${MINIFORGE_PATH}"

# Create the path to conda and activate conda
source "${MINIFORGE_PATH}/etc/profile.d/conda.sh"
# For mamba support
source "${MINIFORGE_PATH}/etc/profile.d/mamba.sh"

# Update your .bashrc to initialise your conda base environment on each login
"${MINIFORGE_PATH}"/bin/conda init
