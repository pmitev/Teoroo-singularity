https://github.com/sylabs/examples/tree/master/database/mariadb


Extract/copy `/etc/mysql/my.cnf` and edit the user so it could run as specified user.
```
singularity shell --writable-tmpfs -B db/:/var/lib/mysql  -B my.cnf:/etc/mysql/my.cnf mariadb.sif
```

Alternatively
```
# add overlay
singularity overlay create --size 64 --create-dir /etc/mysql mariadb.sif

# start shell
singularity shell --writable-tmpfs -B db/:/var/lib/mysql mariadb.sif
# Edit the user inplace
sed -ie "s/^#user.*/user = NEWUSER/" /etc/mysql/my.cnf

```
