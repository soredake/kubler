### fdsfgsglibcmultilib/glibc:20170226
Built: Sun Mar 26 15:28:18 UTC 2017

Image Size: 26.88 MB
#### Installed
Package | USE Flags
--------|----------
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened (multilib) rpc -audit -caps -debug -gd -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb/busybox** |
**FROM fdsfgsglibcmultilib/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
