#!/bin/bash

PROTO_DIR="../proto"
OUT_DIR="../pb"

protoc -I $PROTO_DIR \
  --go_out=$OUT_DIR \
  --go-grpc_out=$OUT_DIR \
  --grpc-gateway_out=$OUT_DIR \
  --openapiv2_out=$OUT_DIR \
  $PROTO_DIR/*.proto

  protoc --go_out=. ./proto/test.proto
  protoc --go-grpc_out=. ./proto/test.proto
  protoc --grpc-gateway_out=. ./proto/test.proto
  protoc --swagger_out=./swagger ./proto/test.proto

