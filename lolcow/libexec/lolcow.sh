#!/bin/bash         
#export SINGULARITY_BINDPATH="/data"
dir="$(dirname $(readlink -f ${BASH_SOURCE[0]}))"
img="lolcow.sif"
cmd=$(basename "$0")                                                                                                                                           
arg="$@"            
echo running: singularity exec "${dir}/${img}" $cmd $arg
singularity exec "${dir}/${img}" $cmd $arg
