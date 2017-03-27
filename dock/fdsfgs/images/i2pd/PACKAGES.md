### fdsfgs/i2pd:20170226
Built: Sun Mar 26 16:54:20 UTC 2017

Image Size: 35.63 MB
#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
dev-libs/boost-1.62.0-r2 | `nls threads (-context) -debug -doc -icu -mpi -python -static-libs -tools`
dev-libs/libressl-2.5.1 | `asm -static-libs`
net-libs/miniupnpc-1.9.20151008 | `ipv6 -static-libs`
net-vpn/i2pd-2.12.0 | `i2p-hardening libressl upnp -pch -static`
sys-apps/debianutils-4.7 | `-static`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
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
