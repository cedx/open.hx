#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)

composer update --no-interaction
haxelib install all --always
haxelib update --always
