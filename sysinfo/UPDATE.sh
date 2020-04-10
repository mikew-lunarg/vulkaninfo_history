#! /bin/bash -x
# Test all features of vulkaninfo on Linux

set -o nounset

# cd to the directory where this script is located,
# to ensure the output is put in the right place.
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

VULKANINFO="vulkaninfo"

which $VULKANINFO > /dev/null 2>&1
[ ! $? ] || source ~/vksdk/setup-env.sh

$VULKANINFO > vulkaninfo.txt

$VULKANINFO -j > vulkaninfo-j.txt

# GPU 9 does not exist, see how vulkaninfo reacts.
$VULKANINFO --json=9 > vulkaninfo-j9.txt

# --html does not redirect; automatically writes to vulkaninfo.html
$VULKANINFO --html

# vim: set sw=4 ts=8 et ic ai:
