#!/usr/bin/env bash

source_path=$1

jellyfin_server_git="https://github.com/jellyfin/jellyfin.git"
jellyfin_web_git="https://github.com/jellyfin/jellyfin-web.git"

mkdir -p $source_path
git -C $source_path clone $jellyfin_server_git
git -C $source_path clone $jellyfin_web_git
