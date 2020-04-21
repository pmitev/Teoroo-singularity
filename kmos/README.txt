singularity pull --name  kmos.sif shub://pmitev/Teoroo-singularity:kmos

# to build
sudo singularity build kmos.sif Singularity.kmos

# to edit
sudo singularity shell --writable kmos.sif
