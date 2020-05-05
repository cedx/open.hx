#!/usr/bin/env pwsh
Set-Location (Split-Path $PSScriptRoot)

foreach ($item in Get-ChildItem var -Exclude .gitkeep) { Remove-Item $item -Recurse }
foreach ($item in @('build', 'doc/api', 'lib/php', 'www')) {
  if (Test-Path $item) { Remove-Item $item -Recurse }
}