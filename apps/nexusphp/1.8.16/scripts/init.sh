#!/bin/bash

if [ -f .env ]; then
  source .env

  GEOIP_DIR="$NEXUSPHP_ROOT_PATH/geoip2"
  mkdir -p "$GEOIP_DIR"

  GEOIP_FILE="$GEOIP_DIR/geoip2.mmdb"
  if curl -o "$GEOIP_FILE" -L "https://cdn.jsdelivr.net/gh/Hackl0us/GeoIP2-CN@release/Country.mmdb"; then
    echo "GeoIP2 database downloaded successfully to $GEOIP_FILE"
  else
    echo "Error: Failed to download GeoIP2 database."
  fi

  CONFIG_DIR="$NEXUSPHP_ROOT_PATH/config"
  mkdir -p "$CONFIG_DIR"

  CONFIG_FILE="$CONFIG_DIR/.env.example"
  cp ./envs/nexusphp.env $CONFIG_FILE
  sed -i "s/APP_KEY=.*/APP_KEY=$APP_KEY/" $CONFIG_FILE

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
