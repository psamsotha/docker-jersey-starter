# Docker Jersey Starter

## Development

### Run

```
docker-compose -f docker-compose.dev.yml up
```

### Test

```
curl -i localhost:8080/hello
```

## Production

### Build Image

```shell
docker build --tag jersey-docker:latest .
```

### Run Container

```shell
docker run -p 8080:8080 jersey-docker:latest
```