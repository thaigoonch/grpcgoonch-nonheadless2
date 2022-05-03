#!/bin/sh

set -e

protoc.sh \
    --go_out=service \
    --proto_path=$(pwd) \
    --go_opt=paths=source_relative \
    --go-grpc_out=service \
    --go-grpc_opt=paths=source_relative \
    service.proto
