#!/bin/bash

workspace=$(hyprctl activeworkspace -j | jq '.id')

windows=$(hyprctl activeworkspace -j | jq -r .windows)
echo "${workspace}:${windows}"
