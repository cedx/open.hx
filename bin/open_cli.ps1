#!/usr/bin/env pwsh
haxe --class-path "$(Split-Path $PSScriptRoot)/src" --interp --library tink_cli --main open.cli.Program $args
