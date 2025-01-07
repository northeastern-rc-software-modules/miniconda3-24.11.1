# Miniconda3-24.11.1
Miniconda is a free, miniature installation of Anaconda Distribution that includes only conda, Python, the packages they both depend on, and a small number of other useful packages.

# Miniconda3-24.11.1 Module Installation

This repository contains the files that were used to generate the Miniconda3-24.11.1 module on the Northeastern University Explorer HPC cluster and the outp>

## Research Computing Instructions
To install this module on the HPC cluster, verify the environmental variable `CLUSTER_DIRECTORY`is set in `env_Miniconda-24.11.1.sh` to the directory you wa>

```bash
sbatch install_Miniconda-24.11.1.sh
```

## Project Directory/ Local Installation Instructions
To install this software in a /projects directory on the HPC cluster, verify the environmental variable `CLUSTER_DIRECTORY`is set in `env_Miniconda-24.11.1.>

```bash
# mkdir -p $CLUSTER_DIRECTORY/modulefiles/$SOFTWARE_NAME
# cp $SOFTWARE_VERSION $CLUSTER_DIRECTORY/modulefiles/$SOFTWARE_NAME/$SOFTWARE_VERSION
```

To install, please run:

```bash
sbatch install_Miniconda-24.11.1.sh
```

## Using a Local Installation
### `srun` Usage
From an `srun` session, run the `source` command from the directory with `env_Miniconda-24.11.1.sh`:

```bash
srun --pty /bin/bash
source env_Miniconda-24.11.1.sh 
```

### `sbatch` Usage
An example of an `sbatch` script utilizing a local installation:
```bash
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p short
source env_Miniconda-24.11.1.sh 
# Your code below
```
