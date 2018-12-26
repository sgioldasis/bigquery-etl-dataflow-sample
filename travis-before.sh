# #!/bin/bash
# PROTOBUF_VERSION=3.6.0
# PROTOC_FILENAME=protoc-${PROTOBUF_VERSION}-linux-x86_64.zip
# wget https://github.com/google/protobuf/releases/download/v${PROTOBUF_VERSION}/${PROTOC_FILENAME}
# unzip ${PROTOC_FILENAME}
# bin/protoc --version


#!/bin/sh
set -e

# # Make sure you grab the latest version
# curl -OL https://github.com/google/protobuf/releases/download/v3.2.0/protoc-3.2.0-linux-x86_64.zip

# # Unzip
# unzip protoc-3.2.0-linux-x86_64.zip -d protoc3

# # Move protoc to /usr/local/bin/
# sudo mv protoc3/bin/* /usr/local/bin/

# # Move protoc3/include to /usr/local/include/
# sudo mv protoc3/include/* /usr/local/include/

sudo apt-get update

sudo apt-get install protobuf-compiler
