#!/bin/bash
CURRENT_USER=$(whoami)
if [ "$CURRENT_USER" != "git" ]; then
    usermod -l git "$CURRENT_USER" 2>/dev/null
    groupmod -n git "$CURRENT_USER" 2>/dev/null
fi
exec "$@"
