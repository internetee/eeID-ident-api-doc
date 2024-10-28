#!/bin/bash

echo "Getting started"

# Bundle docs into zero-dependency HTML file
npx @redocly/cli build-docs openapi/openapi.yaml -o index.html && \
# mv redoc-static.html index.html && \
# echo "Changed name from redoc-static.html to index.html" && \
# Add favicon
awk 'NR==8{print "    <link rel=\"icon\" type=\"image/png\" href=\"docs/favicon.png\"/>"} 1' index.html > temp.html && mv temp.html index.html && \
echo -e "\nDone!"