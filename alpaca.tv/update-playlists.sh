#!/usr/bin/sh
curl --socks5-hostname 127.0.0.1:9050 --compressed -o ./ace.ru.m3u http://f27uk3gyl2gfu4z36eifv4ob73w6xgrcms4w4vdxzcsxsobgc766ityd.onion/trash/ttv-list/ace.all.tag.iproxy.m3u
curl --socks5-hostname 127.0.0.1:9050 --compressed -o ./ace.world.m3u http://f27uk3gyl2gfu4z36eifv4ob73w6xgrcms4w4vdxzcsxsobgc766ityd.onion/trash/ttv-list/as.all.iproxy.m3u
curl --socks5-hostname 127.0.0.1:9050 --compressed -o ./direct.m3u http://f27uk3gyl2gfu4z36eifv4ob73w6xgrcms4w4vdxzcsxsobgc766ityd.onion/trash/ttv-list/as.direct.m3u
sed -i 's/127.0.0.1/192.168.1.2/g' ace.ru.m3u
sed -i 's/127.0.0.1/192.168.1.2/g' ace.world.m3u

git commit -a -m "autoupdate playists"
git push