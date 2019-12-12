#!/bin/sh
# exit when any error occurs http://stackoverflow.com/questions/821396/aborting-a-shell-script-if-any-command-returns-a-non-zero-value
set -e
export SERVER=$1
export ENV=$2
DIR="$(dirname $0)"
. ${DIR}/env.sh

echo "开始打包..."

cd ${BIN_DIR}
./pull_changes.sh
./build.sh
./release.sh

echo "完成打包..."