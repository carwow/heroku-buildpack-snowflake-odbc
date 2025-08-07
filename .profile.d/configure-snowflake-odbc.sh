#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "[snowflake]
Description=SnowflakeDB
Driver=SnowflakeDSIIDriver
Locale=en-US
SERVER=${SNOWFLAKE_ACCOUNT}.snowflakecomputing.com
PORT=443
SSL=on
CLIENT_SESSION_KEEP_ALIVE=true
" > ${ODBCSYSINI}/odbc.ini

if [ -n "${SNOWFLAKE_PRIV_KEY}" ]; then
  echo ${SNOWFLAKE_PRIV_KEY} | base64 -d > ${ODBCSYSINI}/rsa_key.p8
  echo "
AUTHENTICATOR=SNOWFLAKE_JWT
PRIV_KEY_FILE=${ODBCSYSINI}/rsa_key.p8
" > ${ODBCSYSINI}/odbc.ini
fi
