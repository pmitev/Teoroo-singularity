# postgreSQL

Running a postgresql database using singularity
First, we need to pull the postgresql image from dockerhub

```bash
singularity pull docker://postgres:14.2-alpine3.15
```

The image will be saved as postgres_14.2-alpine3.15.sif. Now, create an environment file
```bash
cat >> pg.env <<EOF
export TZ=Europe/Stockholm
export POSTGRES_USER=pguser
export POSTGRES_PASSWORD=mypguser123
export POSTGRES_DB=mydb
export POSTGRES_INITDB_ARGS="--encoding=UTF-8"
EOF
```

Create 2 directories for data and run
```bash
mkdir pgdata
mkdir pgrun
```

Run the container. The options are -B to bind mount local directory to container, -e to clean environment before running the container, -C to start the container with PID, IPC and environment, and --env-file is to pass the environment variables in the file to the container

```bash
singularity run -e -C \
  -B pgdata:/var/lib/postgresql/data \
  -B pgrun:/var/run/postgresql \
  --env-file pg.env \
  postgres_14.2-alpine3.15.sif
````

The postgresql will be listening on localhost at port 5432. To test it out, just open another terminal, and use the same postgres_14.2-alpine3.15.sif to run psql

```bash
singularity exec postgres_14.2-alpine3.15.sif psql -h localhost -p 5432 -d mydb
mydb=#  
```
