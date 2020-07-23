# Docker images
How to build and use the docker images necessary to run the scripts.

## Build the image locally
```bash
cd autosfx
docker build -f Dockerfile.autosfx -t autosfx .
docker image list
docker image rm slaclcls/autosfx:latest
docker tag autosfx:latest slaclcls/autosfx:latest
docker push slaclcls/autosfx:latest
docker image ls
```

## Pull it from Cori
```bash
shifterimg -v pull slaclcls/autosfx:latest
shifterimg images | grep slaclcls
```
### Interactive usage
```bash
salloc -C knl -N 1 -t 00:10:00 -q interactive -A lcls --image=docker:slaclcls/autosfx:latest
shifter /bin/bash
ls /img/
# to use XDS
export PATH=/img/XDS-INTEL64_Linux_x86_64/:$PATH
# to use CCP4
source /img/ccp4-7.1/bin/ccp4.setup-sh
...
```


