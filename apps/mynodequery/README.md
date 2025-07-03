# 使用说明

- 实际只有容器镜像，**并没有开源，使用需要慎重**。

- 每个版本升级，作者可能都要对数据库做修改，所以没事不要升级。保证按要求修改了数据库再升级。

- MySQL 5.7 或更高版本

# 原始相关

## 安装需要一定的技术基础知识，如果没有基础知识建议直接放弃！

## 安装需要一定的技术基础知识，如果没有基础知识建议直接放弃！

## 安装需要一定的技术基础知识，如果没有基础知识建议直接放弃！

## 重要的话说三遍！

## 简介

众所周知NodeQuery已彻底关闭无法使用，MyNodeQuery起因是为了代替NodeQuery发展而来，大部分功能参照了NodeQuery，并增加了一些网友们期望的功能。

MyNodeQuery是一款简洁好用的探针，支持Telegram节点离线通知、节点排序、自定义Ping节点，还有网速、流量报表等功能。

演示站点：[https://status.idcoffer.com](https://status.idcoffer.com/)

Telegram 交流群组：https://t.me/cloudshare


![](https://www.idcoffer.com/wp-content/uploads/2022/06/mynodequery-v1.0.3.0-1.png)

## 使用

### 依赖

- MySql 5.7 或更高版本；（[Docker部署MySQL教程](https://www.idcoffer.com/archives/7903)）
- ~~Redis （可选）~~
- Docker

### 安装

先创建用于mynodequery的空数据库，然后按下面步骤安装

目前仅提供docker版本

```
docker run -d --name=mynodequery -p 5000:5000 jaydenlee2019/mynodequery:latest 
```

#### 如何解决每次更新都要从新Install的问题？

1.  创建一个文本 `/etc/mynodequery/appsettings.json`，内容为：

```
{
    "Logging": {
        "LogLevel": {
            "Default": "Information",
            "Microsoft": "Warning",
            "Microsoft.Hosting.Lifetime": "Information"
        }
    },
    "MySql": {
        "ConnectionString": ""
    },
    "AllowedHosts": "*",
    "Installed": "false",
    "ReadNodeIpHeaderKey": "X-Real-IP"
} 
```

2.  在docker run 语句中加入 `-v /etc/mynodequery/appsettings.json:/app/appsettings.json` 即可解决，如：

```
docker run -d --name=mynodequery -p 5000:5000 -v /etc/mynodequery/appsettings.json:/app/appsettings.json jaydenlee2019/mynodequery:latest 
```

## 更新

### 1.0.5.1

1.  详情页增加自定义Tab（支持 [Markdown](https://markdown.com.cn/basic-syntax/) 语法）;
2.  客户端增加Alpine Linux系统支持；
3.  增加负载/内存/硬盘使用率超过设定阈值通知功能（设置为100代表关闭）；
    1.  可以通过SQL语句批量关闭此功能：update md_nodes set LoadNotifiValue=100;
4.  修复部分已知bug;
5.  更新注意事项：数据库升级不能跨版本升级，如果是从1.0.5.0或更早版本升级，请在MySql客户端执行以下和更早期版本SQL语句：

```
ALTER TABLE `md_nodes` ADD COLUMN `LastLoadNotifiTime` datetime DEFAULT NULL;
ALTER TABLE `md_nodes` ADD COLUMN `LastLoadExceedTime` datetime DEFAULT NULL;
ALTER TABLE `md_nodes` ADD COLUMN `LastDiskNotifiTime` datetime DEFAULT NULL;
ALTER TABLE `md_nodes` ADD COLUMN `LastRAMNotifiTime` datetime DEFAULT NULL;
ALTER TABLE `md_nodes` ADD COLUMN `LastRAMExceedTime` datetime DEFAULT NULL;
ALTER TABLE `md_nodes` ADD COLUMN `LastDiskExceedTime` datetime DEFAULT NULL;

CREATE TABLE `md_node_tabs` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `NodeID` int(4) NOT NULL,
  `TabName` varchar(255) NOT NULL,
  `TabContent` text,
  `SortID` int(4) DEFAULT NULL,
  `CreateTime` datetime DEFAULT Now(),
  `LastUpdate` datetime DEFAULT Now(),
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8; 
```

### 1.0.5.0

1.  详情页增加IPv6显示;
2.  标题增加国家/区域显示；
3.  优化手机上标题显示；
4.  增加购买直达链接；
5.  修复部分已知bug;
6.  更新注意事项：数据库升级不能跨版本升级，如果是从1.0.4.2或更早版本升级，请在MySql客户端执行以下和更早期版本SQL语句：

```
alter table md_nodes add `BuyUrl` varchar(500) default NULL;

alter table bd_node_requests modify column Ping1 decimal(10,3) DEFAULT NULL;
alter table bd_node_requests modify column Ping2 decimal(10,3) DEFAULT NULL;
alter table bd_node_requests modify column Ping3 decimal(10,3) DEFAULT NULL;
alter table bd_node_requests modify column Ping4 decimal(10,3) DEFAULT NULL;
alter table bd_node_requests modify column Ping5 decimal(10,3) DEFAULT NULL; 
```

### 1.0.4.2

1.  增加TCPing协议支持，暂时只支持x86_64/amd64平台;
2.  登录后详情页显示完整IP;
3.  修复部分已知bug;
4.  更新注意事项：如果是从1.0.4.1或更早版本升级，请在MySql客户端执行以下SQL语句：

```
alter table md_ping_nodes add Protocol varchar(10) DEFAULT 'ICMP';
alter table md_ping_nodes add Port int DEFAULT 80;

alter table `bd_node_requests_collect` modify column Value1Sum decimal(38,3);
alter table `bd_node_requests_collect` modify column Value2Sum decimal(38,3);
alter table `bd_node_requests_collect` modify column Value3Sum decimal(38,3);
alter table `bd_node_requests_collect` modify column Value4Sum decimal(38,3);
alter table `bd_node_requests_collect` modify column Value5Sum decimal(38,3); 
```

### 1.0.4.1

1.  移除底部悬浮版权，移至页面底部；
2.  增加底部自定义html内容，并支持Vue的Created方法插入js脚本；
3.  更新注意事项：如果是从1.0.4.0或更早版本升级，请在MySql客户端执行以下SQL语句：

```
ALTER TABLE `sys_settings` modify column FildValue varchar(2000) 
```

### 1.0.4.0

1.  节点详情增加网络延迟tab，显示对ping节点的平均、最高和最低延迟；
2.  其他一些小细节优化；
3.  修复对MySQL 8.0的支持；

### 1.0.3.0

1.  优化性能，大幅度减小数据库体积；
2.  增加国家地区旗帜显示；
3.  节点离线判断增加到5分钟；
4.  其他一些小细节优化；
5.  修复错误字眼、显示错位、已知代码bug等问题（含UI和程序）；
6.  更新注意事项：如果是从1.0.2.3或更早版本升级，请在MySql客户端执行以下SQL语句：https://down.vpsaff.net/mynodequery/upgrade-1.0.3.0-sql.txt

### 1.0.2.3

1.  仪表盘细节优化；
2.  IPv6优化；
3.  更新注意事项：如果是从1.0.2.2或更早版本升级，请在MySql客户端执行以下SQL语句：

```
ALTER TABLE `bd_node_requests`ENGINE=MyISAM;
ALTER TABLE `bd_node_requests` ADD INDEX `ix_bd_node_requests_FirstLine` (`NodeID`, `CreateTime`) ; 
```

### 1.0.2.2

1.  Ping节点可指定IPv4和IPv6，方便ping相同域名的IPv4和IPv6；
2.  仪表盘增加节点排序功能；
3.  修复已知bugs；
4.  更新注意事项：如果是从1.0.2.1或更早版本升级，请在MySql客户端执行以下SQL语句：

```
alter table md_nodes add SortID int DEFAULT 2147483647;
update md_nodes set SortID=2147483647;
alter table md_ping_nodes add HostIPVersion varchar(4);
update md_ping_nodes set HostIPVersion='Auto'; 
```

### 1.0.2.0

1.  增加站点标题可设置；
2.  仪表盘同时显示上行和下行网速；
3.  优化访问速度；
4.  增加Ping节点分组功能，节点可以自定义分组；
5.  修复已知bugs；
6.  更新注意事项：如果是从1.0.1.4或更早版本升级，请在MySql客户端执行以下SQL语句：

```
alter table md_ping_nodes add PingNodeGroupID int; 
update md_ping_nodes set PingNodeGroupID=1 where PingNodeGroupID is null; 
alter table `md_ping_nodes` MODIFY COLUMN `ID`  int NOT NULL AUTO_INCREMENT FIRST ;
alter table md_nodes add PingNodeGroupID int default 1;
update md_nodes set PingNodeGroupID=1 where PingNodeGroupID is null; 
CREATE TABLE md_ping_node_groups ( 
  ID int(11) NOT NULL AUTO_INCREMENT, 
  Name varchar(100) DEFAULT NULL, 
  IsDefault bit default 0, 
  IsDelete bit default 0, 
  PRIMARY KEY (`ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
INSERT INTO md_ping_node_groups (`ID`, Name, IsDefault, `IsDelete`) VALUES ('1', '默认分组', b'1', b'0');
alter table bd_node_requests ADD INDEX `ix_bd_node_requests` (`NodeID`,`CreateMinute`,`Ping1`,`Ping2`,`Ping3`,`Ping4`,`Ping5`) USING BTREE;
alter table bd_node_requests ADD INDEX `ix_bd_node_requests_TXRXGap` (`NodeID`,`CreateMinute`,`TXGap`,`RXGap`) USING BTREE;
alter table bd_node_requests ADD INDEX `ix_bd_node_requests_RAMUsage` (`NodeID`,`CreateMinute`,`RAMUsage`,`SwapUsage`) USING BTREE;
alter table bd_node_requests ADD INDEX `ix_bd_node_requests_Load` (`NodeID`,`CreateMinute`,`LoadCPU`,`Load1`,`LoadIO`) USING BTREE;
alter table bd_node_requests ADD INDEX `ix_bd_node_requests_DiskUsage` (`NodeID`,`CreateMinute`,`DiskUsage`) USING BTREE; 
```

### 1.0.1.3

1.  网络负载增加网卡id显示
2.  解决已知bug
3.  更新注意事项：如果是从1.0.1.2或更早版本升级，请在MySql客户端执行以下SQL语句：

```
alter table md_nodes add  NIC varchar(50); 
```

### 1.0.1.2

1.  降低被控离线误报率，已安装用户需要执行被控重装脚本
2.  解决已知bug

### 1.0.1.0

1.  移除Redis依赖；
2.  增加上报超时时间设置项；
3.  修复节点编辑页被底部遮盖问题；
4.  上线/离线通知增加详情&仪表盘快捷链接。

### 1.0.0.5

1.  修复已知bugs；
2.  列表显示增加骨架屏，加载过程更美观

### 1.0.0.4

1.  升级主控[asp.net](https://hub.docker.com/r/jaydenlee2019/asp.net) core 3.1到最新版本（3.1.22）；
2.  增加列表显示；
3.  增加登陆后显示进程（依赖Redis，不会保存到MySql中）；
4.  修复已知bugs；
5.  更新注意事项：如果是从1.0.0.3或更早版本升级，请在MySql客户端执行以下SQL语句：

```
alter table md_nodes add Keywords varchar(200) default '';
alter table md_nodes add Description varchar(300) default '';
alter table md_nodes modify  column PublicIPv4 varchar(50); 
```

### 1.0.0.3

1.  修复已知bugs
2.  开放Telegram通知功能
3.  增加自定义获取节点IP请求头设置（在设置中可以找到，并添加 /Setting/MyHeaders 页辅助设置）
4.  仪表盘自动刷新修改为5秒

### 1.0.0.2

1.  增加基础SEO支持;
2.  ~~增加Telegram通知;~~（目前内测中）
3.  修复已知bugs
4.  更新注意事项：如果是从1.0.0.1或更早版本升级，请在MySql客户端执行以下SQL语句：

```
alter table md_nodes modify  column DeleteTime datetime;
alter table md_nodes modify  column LastUptime datetime;
alter table md_nodes modify  column AgentUptime datetime;
alter table md_nodes add NodeStatus varchar(10) default 'Unknown';
update md_nodes set NodeStatus='Online' where AgentUptime is not null and date_add(AgentUptime, interval 80 second) >= Now(); 
```

### 1.0.0.1

1.  修复上行下行显示错误问题；
2.  修复站点设置缓存导致无法添加节点问题。

## 其他

### 资源消耗

CPU是AMD EPYC 7402P

![](:/471ec63d14714571858d5bc2ee7a4aba)

### 客户端删除

在服务端删除客户端时会弹出客户端卸载脚本，如果没有看清且误点了关闭，请执行以下命令卸载客户端：

```
rm -rf /etc/mynodequery && (crontab -u mynodequery -l | grep -v "/etc/mynodequery/mynq-agent.sh") | crontab -u mynodequery - && userdel mynodequery 
```