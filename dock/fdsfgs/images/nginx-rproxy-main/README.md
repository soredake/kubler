Docker container with rTorrent and ruTorrent (date tabs and latest)
============================================================================

Tags:

 - rtorrent-rutorrent:$DATETAG
 - rtorrent-rutorrent:latest

----------

Multiple processes inside the container managed by supervisord:

- nginx
- php7-fpm+rutorrent
- rtorrent

----------
Exposed:

 - Web UI ports: 443
 - DHT UDP port: 49160
 - Incoming connections port: 49161
 - Downloads volume: /downloads
 - php7-fpm memory limit: PHP_MEM env var, default is 256M

----------
Adding basic auth:

Put .htpasswd into your /downloads volume root, the container will move him to approative folder at first time, at второй start no files are copied. To remote auth, `rm /var/www/rutorrent/.htpasswd`, do `sed -i 's/#auth_basic/auth_basic/g' /etc/nginx/sites-enabled/rutorrent-tls.nginx` then restart your container.

Instructions on how to generate .htpasswd can be found here: [Nginx FAQ][1]

    $ printf "John:$(openssl passwd -crypt V3Ry)\n" >> .htpasswd # this example uses crypt encryption

    $ printf "Mary:$(openssl passwd -apr1 SEcRe7)\n" >> .htpasswd # this example uses apr1 (Apache MD5) encryption

    $ printf "Jane:$(openssl passwd -1 V3RySEcRe7)\n" >> .htpasswd # this example uses MD5 encryption

----------
Adding custom TLS:

Put your keyfile (shall be named nginx.key) and your certificate (nginx.crt) into /dowloads volume root, the container looks for these files on first start and move их to approative folders, at второй start no files are copied.

Generate a self-signed certificate:

    $ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt

Nginx TLS is configured as follwoing:

    keepalive_timeout   60;
    ssl_ciphers "AES128+EECDH:AES128+EDH";
    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_prefer_server_ciphers on;
    ssl_session_cache shared:SSL:10m;
    add_header X-Frame-Options SAMEORIGIN;
    add_header X-Content-Type-Options nosniff;

----------
Basic auth secured with custom TLS:

Apparently, put .htpasswd, nginx.key and nginx.crt into /downloads root.

----------
Example:

    $ docker run -dt --name rtorrent-rutorrent -p 443:443 -p 49160:49160/udp -p 49161:49161 -v ~/torrents:/downloads fdsfgs/rtorrent-rutorrent:latest

----------
Access web-interface: enter https://your_host_address:$PORT in a browser.

----------
Example, specify rtorrent gid and uid, and increase php7-fpm memory limit:

    $ docker run -dt --name rtorrent-rutorrent -p 8080:80 -p 49160:49160/udp -p 49161:49161 -v ~/torrents:/downloads -e USR_ID=11000 -e GRP_ID=22000 -e PHP_MEM=1024M fdsfgs/rtorrent-rutorrent:latest

----------
Some info

/downloads/watch - rtorrent watch folder

/rtorrent/session - rtorrent folder

/rutorrent - rutorrent folder

----------

  [1]: http://wiki.nginx.org/Faq#How_do_I_generate_an_htpasswd_file_without_having_Apache_tools_installed.3F "Nginx FAQ"
