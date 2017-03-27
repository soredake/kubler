### fdsfgs/tor:20170226
Built: Sun Mar 26 17:18:34 UTC 2017

Image Size: 18.38 MB
#### Installed
Package | USE Flags
--------|----------
app-crypt/libscrypt-1.20 | ``
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
dev-libs/libevent-2.1.8 | `libressl ssl threads -debug -static-libs {-test}`
dev-libs/libressl-2.5.1 | `asm -static-libs`
net-vpn/tor-0.2.8.12 | `libressl scrypt seccomp tor-hardening -bufferevents (-selinux) -stats (-systemd) {-test} -transparent-proxy -web`
sys-apps/debianutils-4.7 | `-static`
sys-libs/libseccomp-2.3.0 | `-static-libs`
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
