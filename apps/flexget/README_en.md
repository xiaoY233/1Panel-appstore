# FlexGet

[![image](https://github.com/Flexget/Flexget/actions/workflows/main.yml/badge.svg?branch=develop)](https://github.com/Flexget/Flexget/actions/workflows/main.yml?query=branch%3Adevelop)

[![image](https://img.shields.io/pypi/v/Flexget.svg)](https://pypi.python.org/pypi/Flexget)

[![image](https://img.shields.io/discord/536690097056120833?label=discord)](https://discord.gg/W6CQrJx)

[![image](http://isitmaintained.com/badge/resolution/Flexget/Flexget.svg)](http://isitmaintained.com/project/Flexget/Flexget)

[FlexGet](https://flexget.com) is a multipurpose automation tool for
content like torrents, nzbs, podcasts, comics, series, movies, etc. It
can use different kinds of sources like RSS-feeds, html pages, csv
files, search engines and there are even plugins for sites that do not
provide any kind of useful feeds.

# Example

Flexget uses a [YAML](http://www.yaml.org/) based configuration file.
The following example will look in the RSS feed in the link, will match
any item that match the series names and download it:

    tasks:
      tv:
        rss: http://example.com/torrents.xml
        series:
        - some series
        - another series
        download: /tvshows

There are numerous plugins that allow utilizing FlexGet in interesting
ways and more are being added continuously.

FlexGet is extremely useful in conjunction with applications which have
watch directory support or provide interface for external utilities like
FlexGet. To get a sense of the many things that can be done with FlexGet
you can take a look in our [cookbook](https://flexget.com/Cookbook).

**ChangeLog:** <https://flexget.com/ChangeLog>

**Help:** <https://github.com/Flexget/Flexget/discussions>

**Chat:** <https://flexget.com/Chat>

**Bugs:** <https://github.com/Flexget/Flexget/issues>

## Install

FlexGet is installable via pip with the command:

    pip install flexget

For more detailed instructions see the [installation
guide](https://flexget.com/Install).

## How to use GIT checkout

Refer to [development
guide](https://flexget.readthedocs.io/en/latest/develop/index.html#how-do-i-get-started).

If you don\'t want to use virtualenv there\'s `flexget_vanilla.py` file
which can be used to run FlexGet without virtualenv, note that you will
need to install all required dependencies yourself.
