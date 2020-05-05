#!/usr/bin/env pwsh
Set-Location (Split-Path $PSScriptRoot)
haxelib run checkstyle --config etc/checkstyle.json --progress --source src --source test
haxelib run formatter --check --source src --source test