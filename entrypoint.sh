#!/bin/sh
JSON_STRING='window.configs = { \
  "VUE_APP_VARIABLE_1":"'"${VUE_APP_VARIABLE_1}"'", \
  "VUE_APP_BE_SERVICE":"'"${VUE_APP_BE_SERVICE}"'" \
}'
sed -i "s@// CONFIGURATIONS_PLACEHOLDER@${JSON_STRING}@" /usr/share/nginx/html/index.html
exec "$@"