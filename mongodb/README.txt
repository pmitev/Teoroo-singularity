Source: https://github.com/singularityhub/mongo

singularity pull --name  mongodb.sif shub://pmitev/Teoroo-singularity:mongodb

singularity run --bind $PWD/data:/data/db mongo.sif --auth 
or
singularity run --bind $PWD/data:/data/db mongo.sif        # without authentication

# to get terminal
$ singularity exec --bind $PWD/data:/data/db mongo.sif mongo
MongoDB shell version v4.2.1
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("22992c09-84bd-416c-9934-db7145a5d37c") }
MongoDB server version: 4.2.1
>


