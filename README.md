## Introduction

适用于移动云手机的SSH，`SSH for Magisk_by ATRAY_v0.18.zip`。
原版指路：https://gitlab.com/d4rcm4rc/MagiskSSH/
原版环境在移动云手机上并不起效，需要改动些才能用。

## Installation

1. 管理员权限：`kauditd`。
2. 补全环境：`toybox_set_PATH.sh`。
3. 补全环境：`busybox_set_PATH.sh`。
4. 面具：`Magisk_27.0.apk`作者Enmmmmmm，选直接安装。
5. SSH模块：`SSH for Magisk_by ATRAY_v0.18.zip`。

## Configuration

> SSH keys can be put into `/data/ssh/root/.ssh/authorized_keys` and `/data/ssh/shell/.ssh/authorized_keys` using your favorite method of editing files. Note that this file must be owned by the respective user and should have `600` permissions (owner: rw, everyone else: nothing).
>
> The sshd configuration file in `/data/ssh/sshd_config` can be edited as well, but please be aware that some features usually present in an OpenSSH installation may be missing. Most importantly, password login is not possible using this package.
>
> The ssh daemon automatically starts on device boot. If this is undesired, you can create a file `/data/ssh/no-autostart`. It will not start the service then.

1. 公钥`authorized_keys`放`/data/ssh/shell/.ssh/`与`/data/ssh/root/.ssh/`目录下。

2. 端口已改10002，配置文件：`/data/ssh/sshd_config`。

