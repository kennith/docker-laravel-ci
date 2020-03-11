## DockerHub

- Login to Docker Hub with `docker login`

```bash
docker login
```

## Build Image

- Build image with `docker build`

`docker build -t kennith/laravel-ci:$IMG_TAG .`

- Push image with `docker push`

`docker push kennith/laravel-ci:$IMG_TAG`

Reference: http://blog.shippable.com/build-a-docker-image-and-push-it-to-docker-hub