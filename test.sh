#!/bin/sh

speedtest --accept-license --accept-gdpr >/dev/null 2>&1
speedtest -s 18458 -f json-pretty
