#!/usr/bin/env pwsh
Set-Location (Split-Path $PSScriptRoot)

git reset --hard
git fetch --all --prune
git pull --rebase

composer update --no-interaction
haxelib update --always