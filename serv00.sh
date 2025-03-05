#wget -O- https://github.com/go-gost/gost/releases/download/v3.0.0/gost_3.0.0_freebsd_amd64.tar.gz | tar xzv gost
if pgrep -x gost > /dev/null
then
    echo "gost 已经运行"
else
    echo "启动 gost..."
    # 启动程序
    nohup ./gost -L socks5://:19823 >/dev/null 2>&1 &
fi
#wget -O cloudflared https://github.com/QWsudo/serv00-keepalive/releases/download/singbox/cloudflared && chmod +x cloudflared
if pgrep -x cloudflared > /dev/null
then
    echo "cloudflared 已经运行"
else
    echo "启动 cloudflared..."
    # 启动程序
    nohup ./cloudflared tunnel --logfile ./cf.log --protocol http2 run --token eyJhIjoiM2QyNjE2NTkzM2Y0Zjk5MTc5NDRhNjIwOGUxZmRhYmIiLCJ0IjoiNTkzZjUyYjktZjk3Mi00Yzk2LWFmMzYtMjRmYTA4OWU2NWM1IiwicyI6Ill6TTJaamhrTXpJdE5tVmlOQzAwTnpNMkxXRmhNMk10TnpsaFltTmxaR1UwTVRZeSJ9 >/dev/null 2>&1 &
fi
#devil www add hello.doinbgodb.serv00.net nodejs /usr/local/bin/node22
exit
