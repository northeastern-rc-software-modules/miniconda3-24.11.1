#!/bin/bash
#SBATCH -p short
#SBATCH --export=ALL
#SBATCH -N 1
#SBATCH -n 28
#SBATCH --exclusive
#SBATCH --job-name=miniconda_testcase_2
#SBATCH --output=output/testcase_2.txt

mkdir -p output src

echo "========================================================"
echo "Job Name: miniconda_testcase_2"
echo "Job ID: $SLURM_JOB_ID"
echo "Job Node: $(hostname)"
echo "Start Time: $(date)"
echo "========================================================"

echo "Step 1: Loading Miniconda module"
module load Miniconda/24.11.1

echo "Step 2: Creating test environment"
conda create -n test_env python=3.9 -y

if [ $? -eq 0 ]; then
    echo "Step 2 Completed: Test environment created successfully."
    
    echo "Step 3: Activating test environment"
    source activate test_env
    
    echo "Step 4: Installing numpy package"
    conda install numpy -y
    
    if [ $? -eq 0 ]; then
        echo "Step 4 Completed: numpy package installed successfully."
        python -c "import numpy; print('NumPy version:', numpy.__version__)"
    else
        echo "Step 4 Failed: Unable to install numpy package."
        exit 1
    fi
    
    echo "Step 5: Deactivating and removing test environment"
    conda deactivate
    conda env remove -n test_env -y
else
    echo "Step 2 Failed: Unable to create test environment."
    exit 1
fi

echo "========================================================"
echo "Exiting Compute Node: $(hostname)"
echo "End Time: $(date)"
echo "========================================================"
