### fdsfgsglibcmultilib/s6:20170226
Built: Sun Mar 26 15:30:49 UTC 2017

Image Size: 28.19 MB
#### Installed
Package | USE Flags
--------|----------
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `ipv6 -doc -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgsglibcmultilib/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened (multilib) rpc -audit -caps -debug -gd -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM gentoobb/busybox** |
**FROM fdsfgsglibcmultilib/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
