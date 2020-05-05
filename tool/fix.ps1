#!/usr/bin/env pwsh
Set-Location (Split-Path $PSScriptRoot)
haxelib run formatter --source src --source test
