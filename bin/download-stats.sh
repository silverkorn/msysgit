#!/bin/sh

# This script shows the download stats on GitHub. Update the id using the
# output of curl -s https://api.github.com/repos/msysgit/msysgit/releases/

# 1.9.2
#id=${1:-268568}
# 1.9.4
id=${1:-371088}

curl -s https://api.github.com/repos/msysgit/msysgit/releases/$id/assets |
grep -e '"name":' -e '"download_count":'
