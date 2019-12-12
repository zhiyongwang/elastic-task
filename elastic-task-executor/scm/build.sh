#!/bin/sh
# exit when any error occurs http://stackoverflow.com/questions/821396/aborting-a-shell-script-if-any-command-returns-a-non-zero-value
set -e

DIR="$(dirname $0)"
. ${DIR}/env.sh

echo "building..."
cd ${BASE_DIR}
gradle clean -Penv=${ENV} bootDistTar
echo "building...done"
