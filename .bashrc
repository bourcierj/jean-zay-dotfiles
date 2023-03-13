#
# ~/.bashrc
#

# set the LC_ALL variable to an english locale. 
export LC_ALL=en_US.UTF-8

# set the history time format
export HISTTIMEFORMAT="%d/%m/%y %T "


## Aliases

### list slurm jobs with long format with 50 characters showing for job names
alias squeuelj='squeue --format "%.18i %.9P %.50j %.8u %.8T %.10M %.9l %.6D %R"'
alias squeuel=squeuelj
### list slurm jobs with their expected start time insteal of run time
alias squeues='squeue --start'

### cancel all my jobs
alias scancel-me="squeue --me -h -o '%i' | xargs scancel"

### recursively touch all files in the personal and common $SCRATCH spaces
function touch-all-files-in-scratch () {
	dirs=("$ALL_CCFRSCRATCH" "$SCRATCH")
	for dir in "${dirs[@]}"
	do
		# recursively touch files ('-a' option is to update access time only)
		find "${dir}" -type f -print0 | xargs -0 touch -a
	done
}
