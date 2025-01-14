#!/bin/bash
#SBATCH -p short
#SBATCH --export=ALL
#SBATCH -N 1
#SBATCH -n 28
#SBATCH --exclusive
#SBATCH --job-name=miniconda_testcase_3
#SBATCH --output=output/testcase_3.txt

mkdir -p output src

echo "========================================================"
echo "Job Name: miniconda_testcase_3"
echo "Job ID: $SLURM_JOB_ID"
echo "Job Node: $(hostname)"
echo "Start Time: $(date)"
echo "========================================================"

echo "Step 1: Loading Miniconda module"
module load Miniconda/24.11.1

echo "Step 2: Testing conda commands"
echo "Checking conda info:"
conda info

echo "Step 3: Listing available environments"
conda env list

echo "Step 4: Testing conda search functionality"
conda search python

echo "Step 5: Testing conda channel functionality"
conda config --show channels

echo "========================================================"
echo "Exiting Compute Node: $(hostname)"
echo "End Time: $(date)"
echo "========================================================"
