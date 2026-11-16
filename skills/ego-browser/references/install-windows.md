# Install ego lite on Windows

1. Download ego lite from <https://lite.ego.app/>. The upstream repository also publishes the current Windows installer link in its README.
2. Run the installer and open ego lite.
3. Complete first-run onboarding. Import Chrome data only if the agent should use those existing sessions.
4. Open a new terminal because PATH changes do not affect an already-running shell.

PowerShell verification:

```powershell
Get-Command ego-browser
ego-browser nodejs -e "console.log('ego-browser ready')"
ego-browser skill
```

Command Prompt verification:

```bat
where ego-browser
ego-browser nodejs -e "console.log('ego-browser ready')"
```

If SmartScreen appears, verify that the installer came from the official ego lite site before continuing. If the command is still unavailable, reopen ego lite, finish onboarding, and start a new terminal.
