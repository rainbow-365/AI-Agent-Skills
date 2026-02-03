#!/bin/bash

echo "Clearing user caches..."
rm -rf ~/Library/Caches/*
echo "Done."

echo "Clearing system caches..."
sudo rm -rf /Library/Caches/*
echo "Done."

echo "Caches cleared successfully."
