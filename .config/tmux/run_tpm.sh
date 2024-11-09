#!/bin/bash

if [[ "$(uname)" == "Linux" ]]; then
    if [[ "$(uname -m)" == "x86_64" ]]; then
        /home/linuxbrew/.linuxbrew/opt/tpm/share/tpm/tpm
    elif [[ "$(uname -m)" == "arm64" ]]; then
        echo "TODO source arm64"
    fi
elif [[ "$(uname)" == "Darwin" ]]; then
    /opt/homebrew/opt/tpm/share/tpm/tpm
fi
