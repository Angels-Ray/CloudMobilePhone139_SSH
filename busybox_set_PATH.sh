#!/system/bin/sh

check_and_link() {
    if ! command -v $1 >/dev/null 2>&1; then
        echo "$1 not found..."
        ln -s /system/xbin/busybox /system/xbin/$1
        echo "done /system/xbin/$1"
    else
        echo "$1 found."
    fi
}

commands=("acpid" "adjtimex" "ar" "arch" "arp" "ascii" "ash" "awk" "base32" "base64" "basename" "bbconfig" "bc" "beep" "blkdiscard" "blkid" "blockdev" "bootchartd" "brctl" "bunzip2" "busybox" "bzcat" "bzip2" "cal" "cat" "chat" "chattr" "chgrp" "chown" "chpst" "chroot" "chrt" "chvt" "cksum" "clear" "cmp" "comm" "conspy" "cp" "cpio" "crc32" "crond" "crontab" "cryptpw" "cttyhack" "cut" "date" "dc" "dd" "deallocvt" "depmod" "devfsd" "devmem" "df" "dhcprelay" "diff" "dirname" "dmesg" "dnsd" "dnsdomainname" "dos2unix" "dpkg" "dpkg-deb" "du" "dumpkmap" "dumpleases" "echo" "ed" "egrep" "eject" "env" "envdir" "envuidgid" "ether-wake" "expand" "expr" "factor" "fakeidentd" "fallocate" "false" "fatattr" "fbset" "fbsplash" "fdflush" "fdformat" "fdisk" "fgconsole" "fgrep" "find" "findfs" "flock" "fold" "free" "freeramdisk" "fsck" "fsck.minix" "fsfreeze" "fstrim" "fsync" "ftpd" "ftpget" "ftpput" "fuser" "getopt" "getty" "grep" "groups" "gunzip" "gzip" "halt" "hd" "hdparm" "head" "hexdump" "hexedit" "hostname" "httpd" "hush" "hwclock" "i2cdetect" "i2cdump" "i2cget" "i2cset" "i2ctransfer" "id" "ifconfig" "ifdown" "ifenslave" "ifplugd" "ifup" "inetd" "init" "inotifyd" "insmod" "install" "ionice" "iostat" "ip" "ipaddr" "ipcalc" "iplink" "ipneigh" "iproute" "iprule" "iptunnel" "kbd_mode" "kill" "killall" "killall5" "klogd" "less" "link" "linux32" "linux64" "linuxrc" "ln" "loadkmap" "logger" "logname" "losetup" "lpd" "lpq" "lpr" "ls" "lsattr" "lsmod" "lsof" "lspci" "lsscsi" "lsusb" "lzcat" "lzma" "lzop" "lzopcat" "makedevs" "makemime" "man" "md5sum" "mesg" "microcom" "mim" "mkdir" "mkdosfs" "mke2fs" "mkfifo" "mkfs.ext2" "mkfs.minix" "mkfs.reiser" "mkfs.vfat" "mknod" "mkpasswd" "mkswap" "mktemp" "modinfo" "modprobe" "more" "mount" "mountpoint" "mpstat" "mt" "mv" "nameif" "nbd-client" "nc" "netstat" "nice" "nl" "nmeter" "nohup" "nologin" "nproc" "nsenter" "nslookup" "ntpd" "nuke" "od" "openvt" "partprobe" "paste" "patch" "pgrep" "pidof" "ping" "ping6" "pipe_progress" "pivot_root" "pkill" "pmap" "popmaildir" "poweroff" "powertop" "printenv" "printf" "ps" "pscan" "pstree" "pwd" "pwdx" "raidautorun" "rdate" "rdev" "readlink" "readprofile" "realpath" "reboot" "reformime" "renice" "reset" "resize" "resume" "rev" "rfkill" "rm" "rmdir" "rmmod" "route" "rpm" "rpm2cpio" "rtcwake" "run-init" "run-parts" "runsv" "runsvdir" "rx" "script" "scriptreplay" "sed" "sendmail" "seq" "setarch" "setconsole" "setfattr" "setkeycodes" "setlogcons" "setpriv" "setserial" "setsid" "setuidgid" "sha1sum" "sha256sum" "sha3sum" "sha512sum" "showkey" "shred" "shuf" "slattach" "sleep" "smemcap" "softlimit" "sort" "split" "start-stop-daemon" "stat" "strings" "stty" "sum" "sv" "svc" "svlogd" "svok" "swapoff" "swapon" "switch_root" "sync" "sysctl" "tac" "tail" "tar" "taskset" "tc" "tcpsvd" "tee" "telnet" "telnetd" "test" "tftp" "tftpd" "time" "timeout" "top" "touch" "tr" "traceroute" "traceroute6" "true" "truncate" "ts" "tty" "ttysize" "tunctl" "tune2fs" "ubiattach" "ubidetach" "ubimkvol" "ubirmvol" "ubirsvol" "ubiupdatevol" "udhcpc" "udhcpd" "udpsvd" "uevent" "umount" "uname" "uncompress" "unexpand" "uniq" "unix2dos" "unlink" "unlzma" "unlzop" "unshare" "unxz" "unzip" "uptime" "usleep" "uudecode" "uuencode" "vconfig" "vi" "volname" "watch" "watchdog" "wc" "wget" "which" "whoami" "whois" "xargs" "xxd" "xz" "xzcat" "yes" "zcat" "zcip")

mkdir /system/xbin
cp  ./busybox /system/xbin/busybox
cp  ./ssl_helper /system/xbin/ssl_helper
chmod 777 /system/xbin/busybox
chmod 777 /system/xbin/ssl_helper
for cmd in "${commands[@]}"; do
    check_and_link $cmd
done