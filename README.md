# vcv-build-env
This repository contains various base docker images for VCV Rack Build Environments that you can use to qualify your VCV Rack plugins.

## Supported Base Images
* Ubuntu 18.04 (Rack SDK 1.1.6)
* Ubuntu 19.10 (Rack SDK 1.1.6)

## Available Docker Tags
https://hub.docker.com/repository/docker/rhrhunter/vcv-build-env/tags?page=1

## How to use
In you VCV Rack plugin's git repository, create a ``Dockerfile`` that contains the following:

```dockerfile
FROM rhrhunter/vcv-build-env:${TAG}
COPY . /plugin
WORKDIR /plugin
RUN make
```

Where ``${TAG}`` is one of the supported tags listed here: https://hub.docker.com/r/rhrhunter/vcv-build-env/tags

For example, to use an Ubuntu 18.04 environment that has Rack SDK v1.1.6:

```dockerfile
FROM rhrhunter/vcv-build-env:ubuntu18.04-rack1.1.6
COPY . /plugin
WORKDIR /plugin
RUN make
```

## Building your Plugin

Once you've created a Dockerfile, build it by running:

``docker build -t my-plugin-image .``

If it builds successfully, your plugin compiles properly on that platform.
