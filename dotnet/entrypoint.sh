# TZ = ${TZ:-"Asia/Taipei"}
# export TZ

cd /home/container || exit 1

# printf "\033[1m\033[33mcontainer@dmitserver~ \033[0mdotnet -version\n"
# dotnet -version

PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")
printf "\033[1m\033[33mcontainer@dmitserver~ \033[0m%s\n" "$PARSED"

exec env ${PARSED}