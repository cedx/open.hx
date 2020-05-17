#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
haxe --class-path "$(Split-Path $PSScriptRoot)/src" --interp --library tink_cli --main open.Program $args
