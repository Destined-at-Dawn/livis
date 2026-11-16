[CmdletBinding()]
param()

$ErrorActionPreference = "Stop"

$command = Get-Command ego-browser -ErrorAction SilentlyContinue
if (-not $command) {
  Write-Error "ego-browser was not found. Install ego lite, finish onboarding, and open a new PowerShell window."
}

& $command.Source nodejs -e "console.log('ego-browser ready')"
if ($LASTEXITCODE -ne 0) {
  throw "ego-browser runtime check failed with exit code $LASTEXITCODE"
}

& $command.Source skill
if ($LASTEXITCODE -ne 0) {
  throw "ego-browser skill check failed with exit code $LASTEXITCODE"
}
