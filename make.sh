#!/bin/bash

echo "Getting started"

# Bundle docs into zero-dependency HTML file
npx @redocly/cli build-docs openapi/openapi.yaml -o index.html

# Check if index.html exists
if [ ! -f index.html ]; then
    echo "index.html does not exist!"
    exit 1
fi

# Add favicon
sed -i '' '8i\
    <link rel="icon" type="image/png" href="docs/favicon.png"/>' index.html

echo -e "\nDone!"