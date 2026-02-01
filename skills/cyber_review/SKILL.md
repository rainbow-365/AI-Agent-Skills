---
name: Cyber-Review
description: An autonomous cybersecurity reviewer that scans codebases for vulnerabilities, secrets, and privacy risks.
---

# Cyber-Review Agent Skill

## Discription
This skill equips the agent to perform a comprehensive cybersecurity review of a project. It covers project exploration, static analysis for secrets and vulnerabilities, and report generation.

## Capabilities
1.  **Project Reconnaissance**: Identify language, framework, and dependencies.
2.  **Secret Scanning**: Detect hardcoded keys, passwords, and tokens.
3.  **Code Analysis**: Find dangerous functions (`eval`, `exec`), injection points, and insecure PII handling.
4.  **Reporting**: Generate a professional security audit report.

## usage
When asked to "review this project for security" or "do a cyber audit", use this skill.

## Procedure

### Phase 1: Exploration
1.  **Identify Structure**: List the root directory.
2.  **Dependencies**: Read `pyproject.toml`, `package.json`, `requirements.txt`, or `Gemfile`.
3.  **Config**: check `.env.example`, `config.yaml`, or similar for how secrets are *intended* to be handled.

### Phase 2: Static Analysis
1.  **Hardcoded Secrets**:
    -   Run `grep_search` or `run_command` with grep to find "API_KEY", "PASSWORD", "SECRET", "TOKEN".
    -   Exclude `.env` and `test` files from the "finding" list (but verify `.env` is gitignored).
2.  **Dangerous Patterns**:
    -   Search for `eval(`, `exec(`, `subprocess.Popen(`, `os.system(`.
    -   Search for SQL injection patterns if database code exists.
    -   Search for "Prompt Injection" risks if AI/LLM code exists.
3.  **Data Privacy**:
    -   Identify where data leaves the system (API calls, logging).
    -   Check if PII is scrubbed.
    -   Verify permissions of output directories (e.g., `reports/`).

### Phase 3: Verification
1.  **Git Checks**: Ensure sensitive files (`.env`, `*.key`) are in `.gitignore`.
2.  **Configuration**: Verify that sensitive config values are not hardcoded.

### Phase 4: Reporting
1.  **Compile Findings**: Group by category (Credentials, Privacy, Injection, etc.).
2.  **Risk Assessment**: Assign High/Medium/Low risk to each finding.
3.  **Recommendations**: Provide actionable fixes.
4.  **Save Report**: Write to `docs/security/security_review_<DATE>.md`.

## Example Report Structure
```markdown
# Security Review: [Project Name]
**Date**: [YYYY-MM-DD]
**Reviewer**: Cyber-Review Agent

## Executive Summary
[Brief overview of security posture]

## Findings
### 1. [Category] - [Risk Level]
- **Assessment**: ...
- **Recommendation**: ...

## Conclusion
...
```
