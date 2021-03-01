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
docker run -d -v $(pwd)/tellstick.conf:/etc/tellstick.conf --privileged --name tellstick-duo pmitev/tellstick-duo
```

## Shell or command
```
docker exec -it tellstick-duo /bin/bash
# or
docker exec -it tellstick-duo tdtool -l
```
