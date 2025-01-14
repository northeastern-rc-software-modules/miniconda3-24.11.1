#!/bin/bash

echo "Starting Miniconda module test cases..."

# Create directories if they don't exist
mkdir -p output src

# Submit all test cases
echo "Submitting test case 1 - Module loading and version verification"
sbatch testcase1_miniconda.sh

echo "Submitting test case 2 - Environment creation and package installation"
sbatch testcase2_miniconda.sh

echo "Submitting test case 3 - Conda package management"
sbatch testcase3_miniconda.sh

echo "All test cases submitted. Check output directory for results."
