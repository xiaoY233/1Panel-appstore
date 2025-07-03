#!/bin/bash

source ./.env

sed -i "s/hostname = \".*\"/hostname = \"${HOSTNAME}\"/" ./data/nitter.conf
sed -i "s/title = \".*\"/title = \"${TITLE}\"/" ./data/nitter.conf
sed -i "s/address = \".*\"/address = \"${ADDRESS}\"/" ./data/nitter.conf
sed -i "s/port = .*/port = ${PANEL_APP_PORT_HTTP}/" ./data/nitter.conf
sed -i "s/https = .*/https = ${HTTPS}/" ./data/nitter.conf
sed -i "s/httpMaxConnections = .*/httpMaxConnections = ${HTTP_MAX_CONNECTIONS}/" ./data/nitter.conf
sed -i "s/staticDir = \".*\"/staticDir = \"${STATIC_DIR}\"/" ./data/nitter.conf
sed -i "s/listMinutes = .*/listMinutes = ${LIST_MINUTES}/" ./data/nitter.conf
sed -i "s/rssMinutes = .*/rssMinutes = ${RSS_MINUTES}/" ./data/nitter.conf
sed -i "s/redisHost = \".*\"/redisHost = \"${REDIS_HOST}\"/" ./data/nitter.conf
sed -i "s/redisPort = .*/redisPort = ${REDIS_PORT}/" ./data/nitter.conf
sed -i "s/redisPassword = \".*\"/redisPassword = \"${PANEL_REDIS_ROOT_PASSWORD}\"/" ./data/nitter.conf
sed -i "s/redisConnections = .*/redisConnections = ${REDIS_CONNECTIONS}/" ./data/nitter.conf
sed -i "s/redisMaxConnections = .*/redisMaxConnections = ${REDIS_MAX_CONNECTIONS}/" ./data/nitter.conf
sed -i "s/hmacKey = \".*\"/hmacKey = \"${HMAC_KEY}\"/" ./data/nitter.conf
sed -i "s/base64Media = .*/base64Media = ${BASE64_MEDIA}/" ./data/nitter.conf
sed -i "s/enableRSS = .*/enableRSS = ${ENABLE_RSS}/" ./data/nitter.conf
sed -i "s/enableDebug = .*/enableDebug = ${ENABLE_DEBUG}/" ./data/nitter.conf
sed -i "s/proxy = \".*\"/proxy = \"${PROXY}\"/" ./data/nitter.conf
sed -i "s/proxyAuth = \".*\"/proxyAuth = \"${PROXY_AUTH}\"/" ./data/nitter.conf
sed -i "s/tokenCount = .*/tokenCount = ${TOKEN_COUNT}/" ./data/nitter.conf
sed -i "s/theme = \".*\"/theme = \"${THEME}\"/" ./data/nitter.conf
sed -i "s/replaceTwitter = \".*\"/replaceTwitter = \"${REPLACE_TWITTER}\"/" ./data/nitter.conf
sed -i "s/replaceYouTube = \".*\"/replaceYouTube = \"${REPLACE_YOUTUBE}\"/" ./data/nitter.conf
sed -i "s/replaceReddit = \".*\"/replaceReddit = \"${REPLACE_REDDIT}\"/" ./data/nitter.conf
sed -i "s/proxyVideos = .*/proxyVideos = ${PROXY_VIDEOS}/" ./data/nitter.conf
sed -i "s/hlsPlayback = .*/hlsPlayback = ${HLS_PLAYBACK}/" ./data/nitter.conf
sed -i "s/infiniteScroll = .*/infiniteScroll = ${INFINITE_SCROLL}/" ./data/nitter.conf
