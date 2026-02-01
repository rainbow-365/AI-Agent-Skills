#!/bin/bash
# Helper script for Cyber-Review Agent to scan for potential secrets

echo "Scanning for potential secrets (Key, Password, Secret, Token)..."
echo "Excluding .env, .git, and test directories."

grep -rTnE "API_KEY|PASSWORD|SECRET|TOKEN" . \
    --exclude-dir=.git \
    --exclude-dir=__pycache__ \
    --exclude-dir=tests \
    --exclude-dir=test \
    --exclude-dir=node_modules \
    --exclude=.env \
    --exclude=.env.example \
    --color=always

echo "Scan complete."
