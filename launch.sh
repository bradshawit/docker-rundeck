#! /bin/sh

set -e

/etc/init.d/rundeckd start &
wait
