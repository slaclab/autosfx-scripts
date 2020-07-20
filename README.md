# autosfx-scripts
Bash and Slurm scripts used in the workflow

## Docker image

The scripts maintained here work within the `autosfx` Docker image. We detail below how it is built.

### autosfx Docker image

### Obsolete: Crystfel Docker image

Available on DockerHub: [slaclcls/crystfel:latest](https://hub.docker.com/repository/registry-1.docker.io/slaclcls/crystfel/tags?page=1)

- added CCP4 and XDS to [Dockerfile.crystfel](https://github.com/fredericpoitevin/relmanage/blob/crystfel-docker-image-for-cori/docker/nersc/docker/Dockerfile.crystfel)
- on personal MacBook:
```bash
docker build -t crystfel -f docker/Dockerfile.crystfel .
docker push slaclcls/crystfel:latest
```
- on Cori: 
```bash
shifterimg -v pull slaclcls/crystfel:latest
```
