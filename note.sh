#! /usr/bin/env bash

set -eo pipefail

# Arguments
# $1 file_name

NOTE_DIR="${HOME}/Documents/.notes"

if [[ ! -d "${NOTE_DIR}" ]]; then 
    mkdir "${NOTE_DIR}"
fi

if [[ "$1" == "" ]]; then
    echo "error: specify a file name"
    exit 1
fi

nvim "$NOTE_DIR/$1"
