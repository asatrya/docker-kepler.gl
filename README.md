# Dockerized kepler.gl

* [http://kepler.gl](http://kepler.gl)
* [https://github.com/asatrya/kepler.gl](https://github.com/asatrya/docker-kepler.gl)

## Build

```bash
docker build -t asatrya/kepler.gl .
```

## Run

```bash
docker run --name kepler.gl -p 8080:80 -d asatrya/kepler.gl

# Optional: pass your mapbox access token to the container
docker run  --name kepler.gl -p 8080:80 -e MapboxAccessToken="yourMapboxToken" -d asatrya/kepler.gl
```

Some modules need to be build at startup. Therefore, it will a take a minute until the container is ready to use
at [http://localhost:8080](http://localhost:8080).