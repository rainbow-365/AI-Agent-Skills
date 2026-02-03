#!/bin/bash

echo "Finding files larger than 1GB in your home directory..."
find ~ -type f -size +1G -exec ls -lh {} \;
echo "Done."
