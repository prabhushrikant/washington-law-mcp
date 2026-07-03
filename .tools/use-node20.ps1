$repo = Split-Path -Parent $PSScriptRoot
$nodeDir = Join-Path $repo '.tools/node-v20.20.2-win-x64'
if (Test-Path $nodeDir) {
  $env:Path = "$nodeDir;$env:Path"
  Write-Host "Using Node 20 from $nodeDir"
  node --version
  npm --version
}
else {
  Write-Error "Node 20 runtime not found at $nodeDir"
}
