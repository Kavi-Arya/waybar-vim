#!/bin/bash

# Get active workspace ID
workspace=$(hyprctl activeworkspace -j | jq '.id')

# Get active monitor name
monitor=$(hyprctl activeworkspace -j | jq -r '.monitor')

# Get monitor index
monitor_index=$(hyprctl monitors -j | jq --arg mon "$monitor" '.[] | select(.name==$mon) | .id')

# Default to "0" if monitor index is not found
monitor_index=${monitor_index:-0}

# Print formatted output
echo "${workspace}:${monitor_index}"
