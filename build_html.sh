#!/usr/bin/env bash
# Build HTML5 export
godot4 --headless --path "$(dirname "$0")" --export-release "Web" html/
