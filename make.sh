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
{
    head -n 7 index.html
    echo '    <link rel="icon" type="image/png" href="docs/favicon.png"/>'
    tail -n +8 index.html
} > temp.html && mv temp.html index.html

echo -e "\nDone!"