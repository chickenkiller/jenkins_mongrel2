#!/bin/sh

PLUGINS="analysis-core git github log-parser sloccount ssh-slaves warnings"

which wget >/dev/null 2>&1 || (echo "Please install wget and run this script again." && exit 1)

mkdir -p plugins && cd plugins

for p in $PLUGINS; do
	rm -rf $p $p.hpi
	wget http://updates.jenkins-ci.org/latest/$p.hpi
done
