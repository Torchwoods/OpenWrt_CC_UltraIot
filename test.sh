#!/bin/sh
rm -rf feeds/ralinks*
rm -rf package/feeds/ralinks
./scripts/feeds update ralinks
./scripts/feeds install -a
