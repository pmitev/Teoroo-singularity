docker build --network=host -t pmitev/tellstick-duo .

docker create --name extract pmitev/tellstick-duo
docker cp extract:/telldus.deb ./
docker rm extract
