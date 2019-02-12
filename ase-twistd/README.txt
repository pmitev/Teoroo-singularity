# Pull 
singularity pull --name ase-twistd.sif shub://pmitev/Teoroo-singularity:ase-twistd

# Run
./ase-twistd.simg
or
singularity run -c ase-twistd.simg

# Local build
sudo singularity build ase-twistd.sif  Singularity.ase-twistd

