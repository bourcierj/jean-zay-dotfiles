#!/usr/bin/env bash

#SBATCH --partition=prepost
#SBATCH --job-name=aws-s3-sync
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=john.doe@domain.com
#SBATCH --time=20:00:00
#SBATCH --output=aws-s3-sync_%j.out
#SBATCH --error=aws-s3-sync_%j.err

echo '-------------------------------------'
echo "Start: $0"
echo "Date: $(date)"
echo '-------------------------------------'


aws_s3_uri="s3://bucket/path/to/prefix"
save_dir="$ALL_CCFRSCRATCH/local/files"

mkdir -p "${save_dir}"
aws s3 sync "${aws_s3_uri}" ${save_dir}

echo '-------------------------------------'
echo "End: $0"
echo "Date: $(date)"
echo '-------------------------------------'
