#! /bin/sh

set -e

sed -i 's/&>>\/var\/log\/rundeck\/service.log &$//g' /etc/init.d/rundeckd

/etc/init.d/rundeckd start &
wait
