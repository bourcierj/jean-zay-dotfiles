#
# ~/.bashrc
#

# set the LC_ALL variable to an english locale. 
export LC_ALL=en_US.UTF-8

# set the history time format
export HISTTIMEFORMAT="%d/%m/%y %T "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/gpfswork/rech/meu/ufb87ma/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/gpfswork/rech/meu/ufb87ma/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/gpfswork/rech/meu/ufb87ma/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/gpfswork/rech/meu/ufb87ma/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

## Aliases
### list slurm jobs with long format with 50 characters showing for job names
alias squeuelj='squeue --format "%.18i %.9P %.50j %.8u %.8T %.10M %.9l %.6D %R"'
alias squeuel=squeuelj
### list slurm jobs with their expected start time insteal of run time
alias squeues='squeue --start'

### cancel all my jobs
alias scancel-me="squeue --me -h -o '%i' | xargs scancel"
