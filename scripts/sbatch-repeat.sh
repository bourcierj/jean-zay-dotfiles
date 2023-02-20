#!/usr/bin/env bash
#
# Utility to repeat the submission of a job with sbatch.
# Usage: sbatch-repeat.sh <my-script.slurm.sh> <num-repeats>
#

script="$1"
n="$2"

for i in $(seq 1 ${n}); do
	sbatch "${script}"
done

