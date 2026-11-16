---
name: ego-browser
description: Use ego lite for browser automation, web app testing, screenshots, form filling, navigation, extraction, and tasks that need the user's existing browser login state.
metadata:
  source: https://github.com/citrolabs/ego-lite
  source_version: "2.2.0"
  license: MIT
---

# Livis browser automation

This repository integrates the `ego-browser` Skill from [citrolabs/ego-lite](https://github.com/citrolabs/ego-lite).

Before starting a browser task, run:

```bash
ego-browser skill
```

Follow the usage guide printed by the installed ego lite version. It exposes browser operations as JavaScript functions and supports isolated task Spaces, snapshots, navigation, clicks, form filling, waits, screenshots, and page extraction.

## First-time setup on Windows

1. Install ego lite from <https://lite.ego.app/> or the official Windows installer linked in the upstream repository.
2. Open ego lite and finish first-run onboarding. Import existing Chrome data only when you intend to share those logins with the agent.
3. Open a new PowerShell window and verify:

```powershell
Get-Command ego-browser
ego-browser nodejs -e "console.log('ego-browser ready')"
ego-browser skill
```

If the command is not found, finish onboarding, restart the terminal, and run the checks again. See [references/install-windows.md](references/install-windows.md).

## Operating rules

- Keep browser automation opt-in at the task level. Do not open a logged-in site or submit a form unless the user asked for that action.
- Prefer a dedicated task Space for Livis automation so the user's foreground tabs remain available.
- Inspect a snapshot before clicking or filling. Re-read the snapshot after navigation or a state-changing action.
- Treat passwords, cookies, access tokens, and private page contents as secrets. Do not write them to Livis logs, issues, commits, or diagnostic bundles.
- Use the narrowest possible storage or cookie operation. Read [references/clearing-state.md](references/clearing-state.md) before any cleanup.
- Ask for an explicit confirmation immediately before irreversible external actions such as publishing, sending, purchasing, deleting, or changing account settings.

## Scope

This Skill is the Livis integration layer. The ego lite browser binary remains an external desktop dependency; this repository does not redistribute the browser binary or copy a browser profile.
