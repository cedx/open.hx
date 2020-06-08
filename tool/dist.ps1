#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)

tool/clean.ps1
haxe build.hxml
Get-ChildItem lib/php -Exclude open | Remove-Item -Recurse
