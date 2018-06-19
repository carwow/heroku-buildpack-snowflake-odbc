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
