# Livis browser automation

Livis now carries an optional browser automation integration based on the MIT-licensed `ego-browser` Skill from [citrolabs/ego-lite](https://github.com/citrolabs/ego-lite).

## What was integrated

- `skills/ego-browser/SKILL.md`: agent instructions and safety boundaries.
- `skills/ego-browser/references/`: Windows setup, upgrade, and browser-state guidance.
- `scripts/verify-ego-browser.ps1`: a repeatable Windows smoke check.
- `THIRD-PARTY-NOTICES.md`: attribution and license notice.

The browser application itself remains an external dependency downloaded from the official ego lite site. Livis does not redistribute the browser binary, Chromium, user profile, cookies, passwords, or tokens.

## Setup

From the Livis repository on Windows:

```powershell
# after installing ego lite and completing onboarding
.\scripts\verify-ego-browser.ps1
```

A successful check prints `ego-browser ready` and then the installed usage guide.

## Agent workflow

For a browser task, the agent should:

1. Run `ego-browser skill`.
2. Create or select a dedicated task Space.
3. Read a page snapshot before acting.
4. Compose navigation, extraction, and interaction steps in one JavaScript execution where possible.
5. Re-read the page after state changes.
6. Request confirmation immediately before an irreversible external action.
7. Return only the result and safe diagnostics; never persist credentials or page secrets.

Typical tasks include checking a public page, extracting structured information, testing a web app, filling a draft form, or using an already-authorized session. Sending, purchasing, publishing, deleting, or changing account settings remains a user-confirmed action.

## Maintenance

When ego lite changes its command guide or Skill contract, update the copied integration files from the upstream repository, preserve the upstream MIT notice, rerun `scripts/verify-ego-browser.ps1`, and record the source version in `skills/ego-browser/SKILL.md`.
