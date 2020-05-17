#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)

haxelib run dox --input-path var --output-path doc/api --title "Open.hx" --toplevel-package lcov
mkdocs build --config-file=etc/mkdocs.yaml
