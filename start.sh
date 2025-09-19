#!/bin/bash
set -e

# 启动 frpc （后台运行）
frpc -c /opt/frp/frpc.ini &

# 启动 wrangler（主进程）
exec wrangler dev --host 0.0.0.0 --port 8787 --local --persist-to .mf
