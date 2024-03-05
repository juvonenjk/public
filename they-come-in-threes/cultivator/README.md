# Cultivator

## Docker

**Create and run the container**
```bash
docker run -d --name cultivator-container -p 5435:5435 -e POSTGRES_PASSWORD=000000 postgres
```

**Check the container**
```bash
docker ps -a
```

**Access the container**
```bash
docker exec -it cultivator-container bash
```

**Create and run the container**
```bash
docker run -d --name cultivator-container -p 5435:5435 -e POSTGRES_PASSWORD=000000 postgres
```

**Build docker image**
```bash
docker build . -t cultivator-container:0.1
```
