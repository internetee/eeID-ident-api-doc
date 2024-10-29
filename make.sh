#!/bin/bash

echo "Getting started"

# Bundle docs into zero-dependency HTML file
npx @redocly/cli build-docs openapi/openapi.yaml -o index.html && \

# Add favicon
sed -i '' '8i\
    <link rel="icon" type="image/png" href="docs/favicon.png"/>' index.html && \

echo -e "\nDone!"