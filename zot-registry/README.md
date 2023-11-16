# Zot-registry


https://oras.land/docs/quickstart/


```bash
singularity pull docker://ghcr.io/project-zot/zot-linux-amd64:latest

mkdir registry
singularity run  -B registry:/var/lib/registry ./zot-linux-amd64_latest.sif

# open browsser at http://localhost:5000 
```


## Docker registry
```bash
mkdir registry
singularity run  -B registry:/var/lib/registry docker://registry

singularity push container.sif oras://localhost:5000/test:v1

```
