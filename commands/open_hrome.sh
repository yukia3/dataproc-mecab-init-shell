#!/bin/bash
TMP_WORKER_DIR=/tmp/junk
rm -rf ${/tmp/junk}
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
  --proxy-server="socks5://localhost:1080" \
  --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost" \
  --user-data-dir=${/tmp/junk}
echo http://cluster-m:8080/