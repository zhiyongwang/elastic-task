#!/bin/sh
# exit when any error occurs http://stackoverflow.com/questions/821396/aborting-a-shell-script-if-any-command-returns-a-non-zero-value
set -e

DIR="$(dirname $0)"
. ${DIR}/env.sh

echo "pulling changes from git..."
cd ${BASE_DIR}

git pull origin develop
echo "pulling changes from git...done"
