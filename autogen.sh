#!/bin/sh

set -e

if [ -d .git ]; then
  git describe --always --tags --dirty > version # get version from git
else
  echo 0.10.3 > version # hard coded versions
fi

libtoolize
aclocal
autoconf
automake --add-missing
