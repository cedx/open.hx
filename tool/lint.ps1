#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)

haxelib run checkstyle --config etc/checkstyle.json --progress --source src --source test
haxelib run formatter --check --source src --source test
