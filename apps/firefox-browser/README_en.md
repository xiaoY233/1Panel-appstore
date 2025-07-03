![](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/firefox-logo.png)


[Firefox](https://www.mozilla.org/en-US/firefox/) Browser, also known as Mozilla Firefox or simply Firefox, is a free and open-source web browser developed by the Mozilla Foundation and its subsidiary, the Mozilla Corporation. Firefox uses the Gecko layout engine to render web pages, which implements current and anticipated web standards.


## Supported Architectures

We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `lscr.io/linuxserver/firefox:latest` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

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
