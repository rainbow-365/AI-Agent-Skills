---
name: macos-disk-space-releaser
description: Automates macOS disk space cleanup by clearing caches, temporary files, logs, emptying trash, running Homebrew cleanup, and identifying large files. Use when you need to free up storage on a macOS system.
---

# MacOS Disk Space Releaser

## Overview
This skill provides a set of scripts to help you free up disk space on your macOS system by automating common cleanup tasks.

## How to Use

You can use the following scripts to perform various disk space cleanup operations. **Please use caution when running these scripts, as they modify your system.**

### 1. Clear Caches

This script clears user and system caches.
To run:
```bash
./scripts/clear-caches.sh
```

### 2. Clean Temporary Files

This script removes temporary files from common locations.
To run:
```bash
./scripts/clean-temp-files.sh
```

### 3. Remove Old Log Files

This script deletes old log files.
To run:
```bash
./scripts/remove-old-logs.sh
```

### 4. Empty Trash

This script empties the user's trash bin.
To run:
```bash
./scripts/empty-trash.sh
```

### 5. Homebrew Cleanup

If you use Homebrew, this script will run `brew cleanup` to remove old formulas and caches.
To run:
```bash
./scripts/homebrew-cleanup.sh
```

### 6. Find Large Files

This script helps you identify large files (greater than 1GB) in your home directory that you might want to manually review, move, or delete.
To run:
```bash
./scripts/find-large-files.sh
```

## Resources

This skill includes the following scripts:

- `scripts/clear-caches.sh`: Clears user and system caches.
- `scripts/clean-temp-files.sh`: Cleans temporary files.
- `scripts/remove-old-logs.sh`: Removes old log files.
- `scripts/empty-trash.sh`: Empties the user's trash.
- `scripts/homebrew-cleanup.sh`: Runs Homebrew cleanup.
- `scripts/find-large-files.sh`: Finds large files in the home directory.