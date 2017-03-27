### fdsfgs/s6:20170226
Built: Sun Mar 26 16:37:06 UTC 2017

Image Size: 5.95 MB
#### Installed
Package | USE Flags
--------|----------
app-admin/entr-3.6 | `{-test}`
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `ipv6 -doc -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgs/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
**FROM fdsfgs/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
