singularity pull --name  cuda.sif shub://pmitev/Teoroo-singularity:u18.04_cuda9.2

singularity run --nv cuda.sif

#==================================

export PYTHONUSERBASE=myappenv
export PYTHONNOUSERSITE=True
