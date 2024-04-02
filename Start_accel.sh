#!/bin/sh

cd /scratch/user/setu/cta-aware
module load foss/2022a
module load Boost
module load Mesa
module load makedepend
#module load CUDA/11.7.0
module load CUDA/11.0.2-GCC-9.3.0
module load Python/2.7.18-GCCcore-12.2.0-bare
module load GDB/11.1-GCCcore-11.2.0
#CMake/3.21.1-GCCcore-11.2.0
export CUDA_INSTALL_PATH=/sw/eb/sw/CUDA/11.7.0
export PATH=$CUDA_INSTALL_PATH/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_INSTALL_PATH/lib:$LD_LIBRARY_PATH
cd accel-sim-framework/
source ./gpu-simulator/setup_environment.sh
make -j -C ./gpu-simulator/
