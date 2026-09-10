# AI Agent Skills

This repository contains two skills for AI agents. Each skill includes a `SKILL.md` instruction file and supporting shell scripts for security review or macOS disk cleanup.

## Available Skills

### [Cyber-Review](skills/cyber_review/SKILL.md)
Instructions for an agent to review codebases for potential vulnerabilities, secrets, and privacy risks.

**Capabilities:**
*   **Project Reconnaissance**: Identify language, framework, and dependencies.
*   **Secret Scanning**: Detect hardcoded keys, passwords, and tokens.
*   **Code Analysis**: Find dangerous functions and insecure patterns.
*   **Reporting**: Write findings, risk levels, and recommendations to `docs/security/security_review_<DATE>.md`.

The bundled [scan_secrets.sh](skills/cyber_review/scripts/scan_secrets.sh) helper searches the current directory recursively for the case-sensitive keywords `API_KEY`, `PASSWORD`, `SECRET`, and `TOKEN`. It excludes `.git`, `__pycache__`, `tests`, `test`, and `node_modules` directories, plus `.env` and `.env.example` files. Matches require review; the script does not validate credentials or perform the full security review described in the skill.

### [macos-disk-space-releaser](skills/macos-disk-space-releaser/SKILL.md)

Instructions and shell scripts for macOS disk cleanup and locating large files.

**Included scripts:**

*   **Clear caches**: Remove entries matched by `~/Library/Caches/*` and `/Library/Caches/*`.
*   **Clean temporary files**: Remove entries matched by `/tmp/*` and `/var/tmp/*`.
*   **Remove logs**: Remove entries matched by `/var/log/*`. Despite its name, `remove-old-logs.sh` does not filter by age.
*   **Empty Trash**: Remove entries matched by `~/.Trash/*`.
*   **Homebrew cleanup**: Run `brew cleanup` if Homebrew is installed; otherwise skip it.
*   **Find large files**: List files matching `find`'s `-size +1G` condition under the user's home directory, without deleting them.

The deletion scripts use `rm -rf` without confirmation or a dry-run option; system cache, temporary-file, and log cleanup use `sudo`. Review the scripts before running them. The `./scripts/...` commands in the skill assume the working directory is `skills/macos-disk-space-releaser`.
