#!/bin/bash
set -ex

VALE_VERSION=3.7.1

# Install required packages
/usr/local/bin/python -m pip install -r docs/requirements.txt

# Required for Vale
/usr/local/bin/python -m pip install rst2html rstcheck  

# Install Vale
mkdir -p /tmp/vale
curl -sSL https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz | tar -xz -C /tmp/vale
sudo install -o root -g root -m 0755 /tmp/vale/vale /usr/local/bin/vale
rm -rf /tmp/vale