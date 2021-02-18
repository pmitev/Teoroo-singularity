singularity pull --name  rstudio.simg shub://pmitev/Teoroo-singularity:rstudio-server

mkdir -p var && singularity run -B var:/var ./rstudio.simg

