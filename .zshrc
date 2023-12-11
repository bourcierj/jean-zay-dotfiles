MODULE_INIT_ZSH=/gpfslocalsup/spack_soft/environment-modules/current/init/zsh
if [[ -s "$MODULE_INIT_ZSH" ]]; then
  source "$MODULE_INIT_ZSH"
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$WORK/miniconda3/bin/conda' 'shell.zsh' 'hook' | envsubst 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$WORK/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/$WORK/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/gpfswork/rech/meu/ufb87ma/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

