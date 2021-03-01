## Build
```
docker build -t pmitev/tellstick-duo .
```

## Extract the .deb files
```
docker create --name extract pmitev/tellstick-duo
docker cp extract:/telldus.deb ./
docker rm extract
```

## RUN
```
docker run -it  --privileged pmitev/tellstick-duo --name tellstick-duo
```

## Shell or command
```
docker exec -it tellstick-duo /bin/bash
# or
docker exec -it tellstick-duo tdtool -l
```
