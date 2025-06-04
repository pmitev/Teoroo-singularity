## Simple build
```bash
wave -s --freeze --conda-package conda-forge::ase --conda-package conda-forge::xorg-libx11 --await
oras://community.wave.seqera.io/library/ase_xorg-libx11:4f81a2d24b8b708d
```

## Build with conda.yml
```bash
wave --conda-file conda.yml --singularity --freeze --await --name-strategy=none
```

```yml
name: forest
channels:
  - conda-forge
dependencies:
  - python=3.11
  - git
  - pip:
    - git+https://github.com/onnela-lab/forest
```


singularity definition file
```singularity
BootStrap: docker
From: mambaorg/micromamba:1.5.10-noble
%files
    {{wave_context_dir}}/conda.yml /scratch/conda.yml
%post
    micromamba install -y -n base -f /scratch/conda.yml
    micromamba install -y -n base conda-forge::procps-ng
    micromamba env export --name base --explicit > environment.lock
    echo ">> CONDA_LOCK_START"
    cat environment.lock
    echo "<< CONDA_LOCK_END"
    micromamba clean -a -y
%environment
    export PATH="$MAMBA_ROOT_PREFIX/bin:$PATH"
```


## Passing definition file
```bash
wave -f hello-world.def --singularity --freeze --await
```
