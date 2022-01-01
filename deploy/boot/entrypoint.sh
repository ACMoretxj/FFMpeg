#!/usr/bin/env bash

ENTRYPOINT_SCRIPTS="/boot/entrypoint.d/"

echo >&1 "$0: Looking for shell scripts in ${ENTRYPOINT_SCRIPTS}"
find "${ENTRYPOINT_SCRIPTS}" -follow -type f -print | sort -V | while read -r f; do
    case "$f" in
        *.sh)
            if [ -x "$f" ]; then
                echo >&1 "$0: Launching $f";
                "$f"
            else
                # warn on shell scripts without exec bit
                echo >&1 "$0: Ignoring $f, not executable";
            fi
            ;;
        *) echo >&1 "$0: Ignoring $f";;
    esac
done

echo >&1 "$0: Configuration complete; ready for start up"

exec "$@"
