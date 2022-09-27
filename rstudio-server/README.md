# Rstudio-server 4.2.1 with Singulariy

```bash
# make var folder
mkdir -p var

# generate password for the user
tmppass=$(mkpasswd --method=SHA-512 --stdin)
grep $USER /etc/passwd | sed -e "s~:x:~:${tmppass}:~" > passwd

# run the server with the corresponding bindings
singularity exec -B var:/var -B passwd:/etc/passwd r-server.sif rserver --auth-none=0 --server-user=$USER
```

