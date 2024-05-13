#
# ~/.zshrc
#

MODULE_INIT_ZSH=/gpfslocalsup/spack_soft/environment-modules/current/init/zsh
if [[ -s "$MODULE_INIT_ZSH" ]]; then
  source "$MODULE_INIT_ZSH"
fi

source .env
source .aliases
