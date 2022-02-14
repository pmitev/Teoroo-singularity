
``` bash
mkdir -p /tmp/lower /tmp/upper /tmp/workdir /tmp/merged

echo "read-only text" > /tmp/lower/file.lower

fuse-overlayfs -o lowerdir=/tmp/lower,upperdir=/tmp/upper,workdir=/tmp/workdir /tmp/merged


umount /tmp/merged
```

## With container
```
singularity shell --fusemount "container:fuse-overlayfs -o lowerdir=/tmp/lower -o upperdir=/tmp/upper -o workdir=/tmp/workdir /tmp/merged" fuse-overlayfs.sif
```
