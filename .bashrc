#
# ~/.bashrc
#

# set the LC_ALL variable to an english locale. 
export LC_ALL=en_US.UTF-8

# set the history time format
export HISTTIMEFORMAT="%d/%m/%y %T "

# Force the Python stdout and stderr streams to be unbuffered
export PYTHONUNBUFFERED=1

## Aliases
# source: https://github.com/stas00/ml-engineering/blob/master/slurm/users.md

### list slurm jobs with long format with 50 characters showing for job names
# list all Slurm jobs on cluster
alias sjobs='squeue -o "%.18i %9P %26j %.8T %.10M %.8l %.6D %.20S %R'
# list my jobs
alias myjobs='squeue --me -o "%.18i %9P %26j %.8T %.10M %.8l %.6D %.20S %R"'
# list my pending jobs
alias myjobs-pending='squeue --me --start'
# list states of partitions and their nodes
alias partitions='sinfo -o "%.7P %.5a %.16F"'

### recursively touch all files in the personal and common $SCRATCH spaces
function touch-all-files-in-scratch () {
	dirs=("$ALL_CCFRSCRATCH" "$SCRATCH")
	for dir in "${dirs[@]}"
	do
		# recursively touch files ('-a' option is to update access time only)
		find "${dir}" -type f -print0 | xargs -0 touch -a
	done
}
