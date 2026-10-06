#!/bin/bash
# 使い方: ./build.sh 0260908
set -euo pipefail

if [ $# -ne 1 ]; then
  echo "Usage: $0 <version> (e.g. 0260908)" >&2
  exit 1
fi

archive=XEiJ_$1.zip
cd "$(dirname "$0")"

wget -O "$archive" "https://stdkmd.net/xeij/$archive"
rm -rf xeij
unzip -q "$archive" -d xeij
mvn -Preplace-data-path process-sources
mvn clean package