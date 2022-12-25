#!/usr/bin/env bash

# Exit immediately if a command returns a non-zero status
set -e

# Set the path to the JSON file
CONFIG_PATH=/data/options.json

# Export the values from the JSON file as an environment variable

export IP=$(jq --raw-output '.ip // empty' $CONFIG_PATH)

export DIRECTORY=$(jq --raw-output '.target // empty' $CONFIG_PATH)

export PATTERN=$(jq --raw-output '.pattern // empty' $CONFIG_PATH)

export PGID=1000
export PUID=1000

chmod -R 777 $DIRECTORY

sh run.sh