#!/bin/sh
set -e

case "$1" in
  configure)
    chown -R 0:0 /usr/share/spark
    chown -R 0:0 /usr/local/bin/spark-shell
    ;;

  abort-upgrade|abort-remove|abort-deconfigure)
    ;;

  *)
    echo "postinst called with unknown argument \`$1'" >&2
    exit 1
    ;;
esac

#DEBHELPER#

exit 0

