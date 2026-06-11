#!/bin/bash
# Pre-render hook: stamp the build date into _variables.yml for the footer.
echo "updated: \"$(date '+%B %Y')\"" > _variables.yml
