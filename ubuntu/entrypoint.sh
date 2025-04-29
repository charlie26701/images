#!/bin/bash

# 設定時區（如果需要可以取消註解）
# TZ = ${TZ:-"Asia/Taipei"}
# export TZ

cd /home/container || exit 1

# 顯示 Ubuntu 版本
printf "\033[1m\033[33mcontainer@ubuntu~ \033[0m"
lsb_release -d | cut -f2

# 處理啟動命令
PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")
printf "\033[1m\033[33mcontainer@ubuntu~ \033[0m%s\n" "$PARSED"

exec env ${PARSED} 