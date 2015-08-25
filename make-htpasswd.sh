#!/bin/bash

USER=testuser
PASS=Pass123

# htpasswd -c nginx/conf/htpasswd $USER

(USERNAME="$USER";PWD="$PASS";SALT="$(openssl rand -base64 3)";SHA1=$(printf "$PWD$SALT" | \
  openssl dgst -binary -sha1 | sed 's#$#'"$SALT"'#' | base64); \
  printf "$USERNAME:{SSHA}$SHA1\n" >> nginx/conf/htpasswd)
