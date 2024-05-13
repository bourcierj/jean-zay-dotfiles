# jean-zay-dotfiles

## Quickstart

Clone the repo in your home directory on Jean Zay. Then copy the dotfiles at the root of your repo, or merge them manually with your dotfiles.

## Scripts

The `scripts` directory contains useful scripts to setup a work environment.

* Initialize software paths by moving them to `$WORK`: `init-sw-paths.sh`; then re-source `.bashrc`
* Install the AWS CLI: `install-aws-cli.sh`
* Install miniconda: `aws-s3-sync.sh`
* Utility to repeat the submission of a job with sbatch: `sbatch-repeat.sh`

## Example slurm jobs

Example slurm jobs scripts are in `scripts/examples`

* Sync an AWS S3 bucket to your project `$SCRATCH`: `aws-s3-sync.slurm.sh`


## Todo

* [] Add script to install pipx
* [] Add script to install wandb
