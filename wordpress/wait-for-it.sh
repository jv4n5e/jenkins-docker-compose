#!/usr/bin/env bash
echo "Wait for it script ran successfully!" > wait-for-it-result
timeout 15 bash -c 'until printf "" 2>>/dev/null >>/dev/tcp/$0/$1; do sleep 1; done' mysqldb 3306