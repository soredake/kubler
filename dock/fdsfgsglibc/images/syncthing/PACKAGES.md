### fdsfgsglibc/syncthing:20170226
Built: Sun Mar 26 15:18:07 UTC 2017

Image Size: 23.74 MB
#### Installed
Package | USE Flags
--------|----------
net-p2p/syncthing-0.14.24 | `-tools`
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgsglibc/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM gentoobb/busybox** |
**FROM fdsfgsglibc/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
