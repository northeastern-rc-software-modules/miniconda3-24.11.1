#!/bin/bash
#SBATCH -p short
#SBATCH --export=ALL
#SBATCH -N 1
#SBATCH -n 28
#SBATCH --exclusive
#SBATCH --job-name=miniconda_testcase_1
#SBATCH --output=output/testcase_1.txt

mkdir -p output src

echo "========================================================"
echo "Job Name: miniconda_testcase_1"
echo "Job ID: $SLURM_JOB_ID"
echo "Job Node: $(hostname)"
echo "Start Time: $(date)"
echo "========================================================"

echo "Step 1: Loading Miniconda module and verifying version"
module load Miniconda/24.11.1
conda --version &> /dev/null

if [ $? -eq 0 ]; then
    echo "Step 1 Completed: Miniconda module loaded successfully."
    echo "Conda Version:"
    conda --version
    echo "Python Version:"
    python --version
else
    echo "Step 1 Failed: Unable to load Miniconda module."
    echo "End Time: $(date)"
    exit 1
fi

echo "========================================================"
echo "Exiting Compute Node: $(hostname)"
echo "End Time: $(date)"
echo "========================================================"
