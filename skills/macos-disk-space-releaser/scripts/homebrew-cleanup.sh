#!/bin/bash

if command -v brew &> /dev/null
then
    echo "Running Homebrew cleanup..."
    brew cleanup
    echo "Done."
else
    echo "Homebrew is not installed. Skipping cleanup."
fi
