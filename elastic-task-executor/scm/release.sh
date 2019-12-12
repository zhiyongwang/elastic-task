#!/bin/sh
# exit when any error occurs http://stackoverflow.com/questions/821396/aborting-a-shell-script-if-any-command-returns-a-non-zero-value
set -e

DIR="$(dirname $0)"
. ${DIR}/env.sh

echo "copying to ${RELEASE_TARGET}"
cd ${BASE_DIR}
scp build/distributions/*.tar ${RELEASE_TARGET}
echo "copying to ${TARGET}...done"
