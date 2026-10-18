#!/bin/sh
set -eu

find /run/nginx -maxdepth 1 -type s -delete
