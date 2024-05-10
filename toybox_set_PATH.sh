#!/system/bin/sh

check_and_link() {
    if ! command -v $1 >/dev/null 2>&1; then
        echo "$1 not found..."
        ln -s /system/bin/toybox /system/xbin/$1
        echo "done /system/xbin/$1"
    else
        echo "$1 found."
    fi
}

commands=("acpi" "appctrl" "base64" "basename" "blkid" "blockdev" "cal" "cat" "chattr" "chcon" "chgrp" "chmod" "chown" "chroot" "chrt" "cksum" "clear" "cmp" "comm" "cp" "cpio" "cut" "date" "dd" "df" "diff" "dirname" "dmesg" "dos2unix" "du" "echo" "egrep" "env" "expand" "expr" "fallocate" "false" "fgrep" "file" "find" "flock" "fmt" "free" "freeramdisk" "fsfreeze" "getenforce" "getfattr" "grep" "groups" "gunzip" "gzip" "head" "help" "hostname" "hwclock" "id" "ifconfig" "inotifyd" "insmod" "install" "ionice" "iorenice" "iotop" "kill" "killall" "ln" "load_policy" "log" "logname" "losetup" "ls" "lsattr" "lsmod" "lsof" "lspci" "lsusb" "makedevs" "md5sum" "microcom" "mkdir" "mkfifo" "mknod" "mkswap" "mktemp" "modinfo" "modprobe" "more" "mount" "mountpoint" "mv" "nbd-client" "nc" "netcat" "netstat" "nice" "nl" "nohup" "od" "partprobe" "paste" "patch" "pgrep" "pidof" "pivot_root" "pkill" "pmap" "printenv" "printf" "ps" "pwd" "pwdx" "readlink" "realpath" "renice" "restorecon" "rev" "rfkill" "rm" "rmdir" "rmmod" "runcon" "sed" "sendevent" "seq" "setenforce" "setfattr" "setprop" "setsid" "sha1sum" "sha224sum" "sha256sum" "sha384sum" "sha512sum" "sleep" "sort" "split" "start" "stat" "stop" "strings" "stty" "swapoff" "swapon" "sync" "sysctl" "tac" "tail" "tar" "taskset" "tee" "time" "timeout" "top" "touch" "tr" "traceroute" "traceroute6" "true" "truncate" "tty" "tunctl" "ulimit" "umount" "uname" "uniq" "unix2dos" "uptime" "usleep" "uudecode" "uuencode" "vconfig" "vmstat" "wc" "which" "whoami" "xargs" "xxd" "yes" "zcat")

mkdir /system/xbin
for cmd in "${commands[@]}"; do
    check_and_link $cmd
done