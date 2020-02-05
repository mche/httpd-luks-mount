#!/bin/sh

export baseURL=https://raw.githubusercontent.com/mche/busybox-httpd-luks-mount/master/cgi-bin
export key1URL=https://gist.githubusercontent.com/mche/3894cedc3997e3acd97470c63bf9ba4a/raw/key.txt

echo "Content-type: text/html;charset=utf-8"
echo ""
echo "<html><head></head><body>"
echo "<h1>Запускается...</h1>"
echo "<pre>"

if [ -z $baseURL ]; then
  bash $PWD/luks-mount.sh;
else
  curl -s -L -H 'Cache-Control: nocache' $baseURL/luks-mount.sh 2>/dev/null | bash;
fi

echo "</pre></body></html>"
echo ""