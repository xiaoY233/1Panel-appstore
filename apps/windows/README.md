<h1 align="center">Windows<br />
<div align="center">
<a href="https://github.com/dockur/windows"><img src="https://github.com/dockur/windows/raw/master/.github/logo.png" title="Logo" style="max-width:100%;" width="128" /></a>
</div>
<div align="center">


</div></h1>

在 Docker 容器内运行 Windows 。

## 使用说明

要验证您的系统是否支持 KVM，请运行以下命令：

```
sudo apt install cpu-checker
sudo kvm-ok
```

如果您根本没有收到来自`kvm-ok`的任何错误，但容器仍然抱怨`/dev/kvm`丢失，则将`privileged: true`添加到您的 compose 文件（或`--privileged`到您的`run`命令）可能会有所帮助，排除任何权限问题。

**在线下载的 Windows 镜像版本可从以下选择 (后续官方可能有修改，以官方文档为准)**

  | **Value** | **Version**              | **Size** |
  |---|---|---|
  | `win11`   | Windows 11 Pro           | 6.4 GB   |
  | `win11e`  | Windows 11 Enterprise    | 5.8 GB   |
  | `win10`   | Windows 10 Pro           | 5.7 GB   |
  | `ltsc10`  | Windows 10 LTSC          | 4.6 GB   |
  | `win10e`  | Windows 10 Enterprise    | 5.2 GB   |
  ||||  
  | `win8`    | Windows 8.1 Pro          | 4.0 GB   |
  | `win8e`   | Windows 8.1 Enterprise   | 3.7 GB   |
  | `win7`    | Windows 7 Enterprise     | 3.0 GB   |
  | `vista`   | Windows Vista Enterprise | 3.0 GB   |
  | `winxp`   | Windows XP Professional  | 0.6 GB   |
  ||||
  | `2022`    | Windows Server 2022      | 4.7 GB   |
  | `2019`    | Windows Server 2019      | 5.3 GB   |
  | `2016`    | Windows Server 2016      | 6.5 GB   |
  | `2012`    | Windows Server 2012      | 4.3 GB   |
  | `2008`    | Windows Server 2008      | 3.0 GB   |
  ||||
  | `core11`  | Tiny 11 Core             | 2.1 GB   |
  | `tiny11`  | Tiny 11                  | 3.8 GB   |
  | `tiny10`  | Tiny 10                  | 3.6 GB   |

