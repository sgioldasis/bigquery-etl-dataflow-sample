# #!/bin/bash
# PROTOBUF_VERSION=3.6.0
# PROTOC_FILENAME=protoc-${PROTOBUF_VERSION}-linux-x86_64.zip
# wget https://github.com/google/protobuf/releases/download/v${PROTOBUF_VERSION}/${PROTOC_FILENAME}
# unzip ${PROTOC_FILENAME}
# bin/protoc --version


#!/bin/sh
set -e

PROTOBUF_VERSION=3.3.0

# check to see if protobuf folder is empty
if [ ! -d "$HOME/protobuf/lib" ]; then
  wget https://protobuf.googlecode.com/files/protobuf-${PROTOBUF_VERSION}.tar.gz
  tar -xzvf protobuf${PROTOBUF_VERSION}.tar.gz
  cd protobuf-${PROTOBUF_VERSION} && ./configure --prefix=$HOME/protobuf && make && make install
else
  echo "Using cached directory."
fi