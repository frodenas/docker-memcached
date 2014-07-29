#!/bin/bash

# Initialize first run
if [[ -e /.firstrun ]]; then
    /scripts/first_run.sh
fi

# Start Memcached
echo "Starting Memcached..."
memcached -u daemon -S -l 0.0.0.0 $@
