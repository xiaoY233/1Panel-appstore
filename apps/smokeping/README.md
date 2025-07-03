[Smokeping](https://oss.oetiker.ch/smokeping/) keeps track of your network latency. For a full example of what this application is capable of visit [UCDavis](http://smokeping.ucdavis.edu/cgi-bin/smokeping.fcgi).

## Application Setup

* Once running, the URL will be `http://<host-ip>/smokeping/smokeping.cgi`. For example, a full URL might look like `https://smokeping.yourdomain.com/smokeping/smokeping.cgi`.
* Basic setup: edit the `Targets` file to ping the hosts you're interested in to match the format found there.
* Wait 10 minutes.
* To reload the configuration without restarting the container, run `docker exec smokeping pkill -f -HUP '/usr/bin/perl /usr/s?bin/smokeping(_cgi)?'`, where `smokeping` is the container ID.
* To restart the container, run `docker restart smokeping`, where `smokeping` is the container ID.
* Note that the default `Targets` file includes items that may or may not work. These are simply to provide examples of configuration.
* Slave setup: modify the `Targets`, `Slaves`, and `smokeping_secrets` files on the master host, per [the documentation](https://manpages.ubuntu.com/manpages/trusty/en/man7/smokeping_master_slave.7.html).

> 中文说明
* 运行后，URL 将是 `http://<host-ip>/smokeping/smokeping.cgi`。例如，完整的 URL 可能是 `https://smokeping.yourdomain.com/smokeping/smokeping.cgi`。
* 基本设置：编辑 `Targets` 文件，ping 你感兴趣的主机，使其与文件中的格式一致。
* 等待 10 分钟。
* 要在不重启容器的情况下重新加载配置，请运行 `docker exec smokeping pkill -f -HUP '/usr/bin/perl /usr/s?bin/smokeping(_cgi)?'` ，其中 `smokeping` 是容器 ID。
* 要重新启动容器，请运行 `docker restart smokeping`，其中 `smokeping` 是容器 ID。
* 请注意，默认的 `Targets` 文件包含的项目可能有效，也可能无效。这些只是为了提供配置示例。
* 从属设置：根据 [文档](https://manpages.ubuntu.com/manpages/trusty/en/man7/smokeping_master_slave.7.html)，修改主主机上的 `Targets`、`Slaves` 和 `smokeping_secrets` 文件。
