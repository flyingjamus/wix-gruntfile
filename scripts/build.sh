#!/bin/bash
set -e
trap "killall sc" EXIT

node_modules/wix-gruntfile/scripts/install-dependencies.sh
node_modules/wix-gruntfile/scripts/grunt-build.sh
node_modules/wix-gruntfile/scripts/bower-release.sh
