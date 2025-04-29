#!/bin/bash

# 設定時區（如果需要可以取消註解）
# TZ = ${TZ:-"Asia/Taipei"}
# export TZ

cd /home/container || exit 1

# 顯示 Ubuntu 版本
printf "\033[1m\033[33mcontainer@ubuntu~ \033[0m"
lsb_release -d | cut -f2

exec /bin/bash 