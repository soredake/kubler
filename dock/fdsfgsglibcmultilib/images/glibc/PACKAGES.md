### fdsfgsglibcmultilib/glibc:20170326

Built: Tue Mar 28 19:35:16 UTC 2017
Image Size: 26.47 MB

#### Installed
Package | USE Flags
--------|----------
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened (multilib) rpc -audit -caps -debug -gd -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
#### Inherited
Package | USE Flags
--------|----------
**FROM ${NAMESPACE}/busybox** |
**FROM fdsfgsglibcmultilib/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
