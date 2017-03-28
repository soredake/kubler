### fdsfgs/rtorrent:20170326

Built: Tue Mar 28 14:53:46 UTC 2017
Image Size: 11.45 MB

#### Installed
Package | USE Flags
--------|----------
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
dev-libs/libressl-2.5.1 | `asm -static-libs`
dev-libs/libsigc++-2.8.0 | `-doc -static-libs {-test}`
net-libs/libtorrent-0.13.6 | `ipv6 libressl ssl -debug {-test}`
net-misc/curl-7.53.0 | `ipv6 ssl threads -adns -http2 -idn -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-p2p/rtorrent-0.9.6 | `ipv6 -daemon -debug (-selinux) {-test} -xmlrpc`
sys-apps/debianutils-4.7 | `-static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgs/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`

#### Purged
- [x] Headers
- [x] Static Libs
