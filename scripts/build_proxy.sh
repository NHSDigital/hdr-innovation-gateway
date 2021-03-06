#!/bin/bash

set -o nounset errexit pipefail

# Collect the API Proxy and Hosted Target (Sandbox server)
# files into build/apiproxy/ and deploy to Apigee

rm -rf build/proxies
mkdir -p build/proxies/sandbox
mkdir -p build/proxies/live
cp -Rv proxies/sandbox/apiproxy build/proxies/sandbox
cp -Rv proxies/live/apiproxy build/proxies/live