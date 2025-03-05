wget -O- https://github.com/go-gost/gost/releases/download/v3.0.0/gost_3.0.0_freebsd_amd64.tar.gz | tar xzv gost
nohup ./gost -L socks5://:36209 >/dev/null 2>&1 &
wget -O cloudflared https://github.com/QWsudo/serv00-keepalive/releases/download/singbox/cloudflared && chmod +x cloudflared
nohup ./cloudflared tunnel --logfile ./cf.log --protocol http2 run --token eyJhIjoiM2QyNjE2NTkzM2Y0Zjk5MTc5NDRhNjIwOGUxZmRhYmIiLCJ0IjoiNTkzZjUyYjktZjk3Mi00Yzk2LWFmMzYtMjRmYTA4OWU2NWM1IiwicyI6Ill6TTJaamhrTXpJdE5tVmlOQzAwTnpNMkxXRmhNMk10TnpsaFltTmxaR1UwTVRZeSJ9 >/dev/null 2>&1 &
