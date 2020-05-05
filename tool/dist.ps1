#!/usr/bin/env pwsh
Set-Location (Split-Path $PSScriptRoot)

tool/clean.ps1
haxe build.hxml

foreach ($item in Get-ChildItem lib/php) {
  if ($item.BaseName -ne 'open') { Remove-Item $item -Recurse }
}
