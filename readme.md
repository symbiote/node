# Symbiote node tools

## Build

`docker build -t symbiote/node .`

## Run

Exposing port 4200, some projects will want to do this differently to match
their internal webpack configs

```
docker run -it --rm -v $(pwd):/tmp -w /tmp -p 4200:4200 -u `id -u`:`id -g` symbiote/node
```

To run the inner binaries directly, simply pass as a parameter 

```
docker run -it --rm -v $(pwd):/tmp -w /tmp -p 4200:4200 -u `id -u`:`id -g` symbiote/node yarn start
```

## Updating

To add a new version;

* Create a folder representing the specific version that 'latest' has previously pointed to
* Copy the Dockerfile and build.sh file into that location and update version numbers
* Update .gitlab-ci.yml to have a new job to build that directory
* Update the root build.sh file to have a symbiote/node:{new_version} and symbiote/node:latest tag
