#!/bin/bash

COMPOSE_FILE="app/compose.yml"
old_image=$(awk '/dhawal901\/jenkins-task-3/ {print}' "$COMPOSE_FILE")
new_version=$1
new_image=$(echo "$old_image" | sed -E "s/:[0-9]+/:$new_version/")
sed -i.bak "s|$old_image|$new_image|" "$COMPOSE_FILE"

echo "Updated $COMPOSE_FILE with new image version: $new_version"