#requires -Version 5.1
<#
  OpenCode Skills Pack - installer for Windows
  Usage:  .\install.ps1
#>
$ErrorActionPreference = 'Stop'
$RepoDir  = Split-Path -Parent $MyInvocation.MyCommand.Path
$Manifest = Join-Path $RepoDir 'manifest.json'
$ConfigDir = if ($env:XDG_CONFIG_HOME) { Join-Path $env:XDG_CONFIG_HOME 'opencode' } else { Join-Path $HOME '.config\opencode' }

function Say($m) { Write-Host "`n==> $m" -ForegroundColor Cyan }
function Die($m) { Write-Host "ERROR: $m" -ForegroundColor Red; exit 1 }

Say 'Checking prerequisites'
foreach ($c in 'node','npx','opencode') {
  if (-not (Get-Command $c -ErrorAction SilentlyContinue)) { Die "$c not found (need Node.js 22.20+ and OpenCode 2.0.4+)" }
}
if (-not (Test-Path $Manifest)) { Die 'manifest.json missing next to this script' }
Write-Host "  node $(node -v)   opencode $((opencode --version 2>$null) -join '')"
New-Item -ItemType Directory -Path $ConfigDir -Force | Out-Null

# ---------------------------------------------------------------- 1. CLI skills
Say 'Installing skills from upstream repos'
$m = Get-Content $Manifest -Raw -Encoding utf8 | ConvertFrom-Json
$failed = 0
foreach ($src in $m.cli) {
  Write-Host "`n--- $($src.source) ($($src.skills.Count) skills)" -ForegroundColor White
  $args = @('--yes','skills','add',$src.source)
  foreach ($k in $src.skills) { $args += @('--skill', $k) }
  $args += @('--agent','opencode','--global','--full-depth','-y')
  & npx @args
  if ($LASTEXITCODE -ne 0) { $failed++; Write-Host "  !! $($src.source) failed (exit $LASTEXITCODE) - continuing" -ForegroundColor Yellow }
}
Write-Host "`n$($m.cli.Count - $failed)/$($m.cli.Count) sources installed" -ForegroundColor Green

# ---------------------------------------------------------------- 2. plugins
Say 'Registering OpenCode plugins'
$cfgFile = Join-Path $ConfigDir 'opencode.json'
$cfg = @{}
if (Test-Path $cfgFile) {
  try { $cfg = Get-Content $cfgFile -Raw -Encoding utf8 | ConvertFrom-Json } catch {
    Write-Host '  !! existing opencode.json is not valid JSON - not touching it' -ForegroundColor Yellow
  }
}
if ($cfg -is [pscustomobject]) {
  $existing = @()
  if ($cfg.PSObject.Properties.Name -contains 'plugins' -and $cfg.plugins) { $existing = @($cfg.plugins) }
  foreach ($p in $m.plugins) { if ($existing -notcontains $p.package) { $existing += $p.package } }
  $cfg | Add-Member -NotePropertyName 'plugins' -NotePropertyValue $existing -Force
  $cfg | ConvertTo-Json -Depth 10 | Set-Content $cfgFile -Encoding utf8
  Write-Host "  $cfgFile"
  Write-Host "  plugins: $($existing -join ', ')"
}

# ---------------------------------------------------------------- 3. files
Say 'Copying agents, commands and instructions'
$agentDir = Join-Path $ConfigDir 'agent'
$cmdDir   = Join-Path $ConfigDir 'command'
New-Item -ItemType Directory -Path $agentDir,$cmdDir -Force | Out-Null
Copy-Item (Join-Path $RepoDir 'agents\*.md')   $agentDir -Force
Copy-Item (Join-Path $RepoDir 'commands\*.md') $cmdDir   -Force
Copy-Item (Join-Path $RepoDir 'AGENTS.md')     (Join-Path $ConfigDir 'AGENTS.md') -Force
Write-Host "  agents:   $((Get-ChildItem $agentDir -Filter *.md).Count)"
Write-Host "  commands: $((Get-ChildItem $cmdDir   -Filter *.md).Count)"
Write-Host '  AGENTS.md installed'

# ---------------------------------------------------------------- 4. reverse workbench
Say 'Installing Reverse Workbench (uses the repo own installer)'
$tmp = Join-Path $env:TEMP ("rw-" + [guid]::NewGuid().ToString('N'))
try {
  git clone --depth 1 https://github.com/Asaiuta/reverse-workbench-skill.git $tmp | Out-Null
  powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $tmp 'scripts\install-skill.ps1')
} catch {
  Write-Host "  !! reverse-workbench install failed - skipping" -ForegroundColor Yellow
} finally {
  Remove-Item $tmp -Recurse -Force -ErrorAction SilentlyContinue
}

Say 'Done'
Write-Host @'

Restart OpenCode (or run: opencode service restart) to pick up the new skills.

Then just describe what you want in a prompt - the skills trigger on their own.
Open the /skills picker to see the full list.

'@
