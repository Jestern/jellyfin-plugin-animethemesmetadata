#!/usr/bin/env bash

source_path=$1

jellyfin_server_source_path="$1/jellyfin"
jellyfin_web_source_path="$1/jellyfin-web"

# Build jellyfin server
dotnet build $jellyfin_server_source_path/Jellyfin.Server/Jellyfin.Server.csproj

# Build jellyfin web
npm --prefix $jellyfin_web_source_path install
npm --prefix $jellyfin_web_source_path run build:development
