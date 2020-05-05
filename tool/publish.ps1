#!/usr/bin/env pwsh
Set-Location (Split-Path $PSScriptRoot)

tool/dist.ps1
haxelib submit

$version = (Get-Content haxelib.json | ConvertFrom-Json).version
git tag "v$version"
git push origin "v$version"
