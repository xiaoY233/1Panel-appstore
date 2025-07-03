The [LinuxServer.io](https://linuxserver.io/) team brings you another container release featuring:

- regular and timely application updates
- easy user mappings (PGID, PUID)
- custom base image with s6 overlay
- weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
- regular security updates

Find us at:

- [Blog](https://blog.linuxserver.io/) \- all the things you can do with our containers including How-To guides, opinions and much more!
- [Discord](https://discord.gg/YWrKVTn) \- realtime support / chat with the community and the team.
- [Discourse](https://discourse.linuxserver.io/) \- post on our community forum.
- [Fleet](https://fleet.linuxserver.io/) \- an online web interface which displays all of our maintained images.
- [GitHub](https://github.com/linuxserver) \- view the source for all of our repositories.
- [Open Collective](https://opencollective.com/linuxserver) \- please consider helping us by either donating or contributing to our budget

[LibreOffice](https://www.libreoffice.org/) is a free and powerful office suite, and a successor to OpenOffice.org (commonly known as OpenOffice). Its clean interface and feature-rich tools help you unleash your creativity and enhance your productivity.

[![libreoffice](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/libreoffice-logo.png)](https://www.libreoffice.org/)

## Supported Architectures

We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `lscr.io/linuxserver/libreoffice:latest` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Available | Tag |
| --- | --- | --- |
| x86-64 | ✅   | amd64-&lt;version tag&gt; |
| arm64 | ✅   | arm64v8-&lt;version tag&gt; |
| armhf | ❌   |     |

## Application Setup

The application can be accessed at:

- http://yourhost:3000/
- https://yourhost:3001/

### Options in all KasmVNC based GUI containers

This container is based on [Docker Baseimage KasmVNC](https://github.com/linuxserver/docker-baseimage-kasmvnc) which means there are additional environment variables and run configurations to enable or disable specific functionality.

#### Optional environment variables

| Variable | Description |
| --- | --- |
| CUSTOM_PORT | Internal port the container listens on for http if it needs to be swapped from the default 3000. |
| CUSTOM\_HTTPS\_PORT | Internal port the container listens on for https if it needs to be swapped from the default 3001. |
| CUSTOM_USER | HTTP Basic auth username, abc is default. |
| PASSWORD | HTTP Basic auth password, abc is default. If unset there will be no auth |
| SUBFOLDER | Subfolder for the application if running a subfolder reverse proxy, need both slashes IE `/subfolder/` |
| TITLE | The page title displayed on the web browser, default "KasmVNC Client". |
| FM_HOME | This is the home directory (landing) for the file manager, default "/config". |
| START_DOCKER | If set to false a container with privilege will not automatically start the DinD Docker setup. |
| DRINODE | If mounting in /dev/dri for [DRI3 GPU Acceleration](https://www.kasmweb.com/kasmvnc/docs/master/gpu_acceleration.html) allows you to specify the device to use IE `/dev/dri/renderD128` |

#### Optional run configurations

| Variable | Description |
| --- | --- |
| `--privileged` | Will start a Docker in Docker (DinD) setup inside the container to use docker in an isolated environment. For increased performance mount the Docker directory inside the container to the host IE `-v /home/user/docker-data:/var/lib/docker`. |
| `-v /var/run/docker.sock:/var/run/docker.sock` | Mount in the host level Docker socket to either interact with it via CLI or use Docker enabled applications. |
| `--device /dev/dri:/dev/dri` | Mount a GPU into the container, this can be used in conjunction with the `DRINODE` environment variable to leverage a host video card for GPU accelerated appplications. Only **Open Source** drivers are supported IE (Intel,AMDGPU,Radeon,ATI,Nouveau) |

### Lossless mode

This container is capable of delivering a true lossless image at a high framerate to your web browser by changing the Stream Quality preset to "Lossless", more information [here](https://www.kasmweb.com/docs/latest/how_to/lossless.html#technical-background). In order to use this mode from a non localhost endpoint the HTTPS port on 3001 needs to be used. If using a reverse proxy to port 3000 specific headers will need to be set as outlined [here](https://github.com/linuxserver/docker-baseimage-kasmvnc#lossless).

## Usage

Here are some example snippets to help you get started creating a container.

### docker-compose (recommended, [click here for more info](https://docs.linuxserver.io/general/docker-compose))

```
---
version: "2.1"
services:
  libreoffice:
    image: lscr.io/linuxserver/libreoffice:latest
    container_name: libreoffice
    security_opt:
      - seccomp:unconfined #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - /path/to/config:/config
    ports:
      - 3000:3000
      - 3001:3001
    restart: unless-stopped 
```

### docker cli ([click here for more info](https://docs.docker.com/engine/reference/commandline/cli/))

```
docker run -d \
  --name=libreoffice \
  --security-opt seccomp=unconfined `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3000:3000 \
  -p 3001:3001 \
  -v /path/to/config:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/libreoffice:latest 
```

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| --- | --- |
| `-p 3000` | LibreOffice desktop gui. |
| `-p 3001` | LibreOffice desktop gui HTTPS. |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Etc/UTC` | specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List). |
| `-v /config` | Users home directory in the container, stores program settings and documents |
| `--security-opt seccomp=unconfined` | For Docker Engine only, many modern gui apps need this to function on older hosts as syscalls are unknown to Docker. |

## Environment variables from files (Docker secrets)

You can set any environment variable from a file by using a special prepend `FILE__`.

As an example:

```
-e FILE__PASSWORD=/run/secrets/mysecretpassword 
```

Will set the environment variable `PASSWORD` based on the contents of the `/run/secrets/mysecretpassword` file.

## Umask for running applications

For all of our images we provide the ability to override the default umask settings for services started within the containers using the optional `-e UMASK=022` setting. Keep in mind umask is not chmod it subtracts from permissions based on it's value it does not add. Please read up [here](https://en.wikipedia.org/wiki/Umask) before asking for support.

## User / Group Identifiers

When using volumes (`-v` flags) permissions issues can arise between the host OS and the container, we avoid this issue by allowing you to specify the user `PUID` and group `PGID`.

Ensure any volume directories on the host are owned by the same user you specify and any permissions issues will vanish like magic.

In this instance `PUID=1000` and `PGID=1000`, to find yours use `id user` as below:

```
 $ id username
    uid=1000(dockeruser) gid=1000(dockergroup) groups=1000(dockergroup) 
```

## Docker Mods

We publish various [Docker Mods](https://github.com/linuxserver/docker-mods) to enable additional functionality within the containers. The list of Mods available for this image (if any) as well as universal mods that can be applied to any one of our images can be accessed via the dynamic badges above.

## Support Info

- Shell access whilst the container is running: `docker exec -it libreoffice /bin/bash`
- To monitor the logs of the container in realtime: `docker logs -f libreoffice`
- container version number
    - `docker inspect -f '{{ index .Config.Labels "build_version" }}' libreoffice`
- image version number
    - `docker inspect -f '{{ index .Config.Labels "build_version" }}' lscr.io/linuxserver/libreoffice:latest`

## Updating Info

Most of our images are static, versioned, and require an image update and container recreation to update the app inside. With some exceptions (ie. nextcloud, plex), we do not recommend or support updating apps inside the container. Please consult the [Application Setup](#application-setup) section above to see if it is recommended for the image.

Below are the instructions for updating containers:

### Via Docker Compose

- Update all images: `docker-compose pull`
    - or update a single image: `docker-compose pull libreoffice`
- Let compose update all containers as necessary: `docker-compose up -d`
    - or update a single container: `docker-compose up -d libreoffice`
- You can also remove the old dangling images: `docker image prune`

### Via Docker Run

- Update the image: `docker pull lscr.io/linuxserver/libreoffice:latest`
- Stop the running container: `docker stop libreoffice`
- Delete the container: `docker rm libreoffice`
- Recreate a new container with the same docker run parameters as instructed above (if mapped correctly to a host folder, your `/config` folder and settings will be preserved)
- You can also remove the old dangling images: `docker image prune`

### Via Watchtower auto-updater (only use if you don't remember the original parameters)

- Pull the latest image at its tag and replace it with the same env variables in one run:
    
    ```
    docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower \
    --run-once libreoffice 
    ```
    
- You can also remove the old dangling images: `docker image prune`
    

**Note:** We do not endorse the use of Watchtower as a solution to automated updates of existing Docker containers. In fact we generally discourage automated updates. However, this is a useful tool for one-time manual updates of containers where you have forgotten the original parameters. In the long term, we highly recommend using [Docker Compose](https://docs.linuxserver.io/general/docker-compose).

### Image Update Notifications - Diun (Docker Image Update Notifier)

- We recommend [Diun](https://crazymax.dev/diun/) for update notifications. Other tools that automatically update containers unattended are not recommended or supported.

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic:

```
git clone https://github.com/linuxserver/docker-libreoffice.git
cd docker-libreoffice
docker build \
  --no-cache \
  --pull \
  -t lscr.io/linuxserver/libreoffice:latest . 
```

The ARM variants can be built on x86_64 hardware using `multiarch/qemu-user-static`

```
docker run --rm --privileged multiarch/qemu-user-static:register --reset 
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

- **13.05.23:** \- Rebase to Alpine 3.18.
- **18.03.23:** \- Rebase to KasmVNC base image.
- **21.10.22:** \- Rebase to Alpine 3.16, migrate to s6v3.
- **23.12.21:** \- Rebase to Alpine 3.15.
- **26.09.21:** \- Rebase to Alpine 3.14.
- **05.04.21:** \- Initial release.