# Install or upgrade ego lite

The `ego-browser` command is provided by the ego lite desktop application. Livis does not bundle the browser binary.

## Windows

Read [install-windows.md](install-windows.md), install ego lite, open the application, and finish onboarding. Onboarding registers `ego-browser` on PATH for new terminal processes.

Then open a new PowerShell window and run:

```powershell
Get-Command ego-browser
ego-browser nodejs -e "console.log('ego-browser ready')"
ego-browser skill
```

## macOS

Use the official installer and instructions from the upstream project:

<https://github.com/citrolabs/ego-lite/tree/main/skills/ego-browser/references>

## Upgrade

If `ego-browser skill` reports an unknown command, the installed app is older than the integrated Skill. Upgrade ego lite from <https://lite.ego.app/> and repeat the verification commands.

After the runtime is ready, return to the original browser task and start with `ego-browser skill`.
