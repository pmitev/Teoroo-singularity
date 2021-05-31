# Wrapping commands
https://singularity-tutorial.github.io/07-fake-installation/

``` bash
singularity pull lolcow.sif library://godlovedc/funny/lolcow
```

## wrapper lolcow.sh
``` bash
#!/bin/bash
#export SINGULARITY_BINDPATH="/data"
dir="$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
img="lolcow.sif"
cmd=$(basename "$0")
arg="$@"
echo running: singularity exec "${dir}/${img}" $cmd $arg
singularity exec "${dir}/${img}" $cmd $arg

```



