#! /bin/bash -x

# cd to the directory where this script is located,
# to ensure the output is put in the right place.
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

VULKANINFO=vulkaninfo

$VULKANINFO > vulkaninfo.txt

$VULKANINFO -j > vulkaninfo-j.txt

# GPU 9 does not exist, see how vulkaninfo reacts.
$VULKANINFO --json=9 > vulkaninfo-j9.txt

# --html does not redirect; automatically writes to vulkaninfo.html
$VULKANINFO --html

