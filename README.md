## DockerHub

- Login to Docker Hub with `docker login`

```bash
docker login
```

## Build Image

- Build image with `docker build`

## Releasing

- DockerHub is now integrated with GitHub.
- A tag with vMajor.Minor.Patch will build in DockerHub.

## Workflow

1. Update Dockerfile
2. Test and build image locally with `docker build .`
3. Commit and push to GitHub.
4. Tag a release with v#.#.#
