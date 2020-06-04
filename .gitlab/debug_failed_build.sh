#!/bin/bash

lockfile="/tmp/debug.lock"

if [[ ! -z "$PAUSE_FAILED_BUILDS" ]]; then
    echo " ********************************************* "
    echo "**          ERROR: BUILD HAS FAILED          **"
    echo " ********************************************* "
    echo
    echo "The build has failed and the build debugger has been started."
    echo "You may connect to the docker container using docker exec or the GitLab interactive web terminal in order to debug the issue"
    echo
    echo "To proceed, delete the file $lockfile to complete the (failed) build pipeline"

    touch $lockfile
    while [ -f "$lockfile" ]; do
      sleep 1
    done

    echo "Lockfile removed; passing failure status to GitLab"
fi

exit 1