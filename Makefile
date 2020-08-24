all: rpc kv

rpc:
	protoc --elixir_out=plugins=grpc:lib -I priv -I priv/googleapis -I priv/protobuf priv/etcd/etcdserver/etcdserverpb/rpc.proto

kv:
	protoc --elixir_out=plugins=grpc:lib -I priv -I priv/googleapis -I priv/protobuf priv/etcd/mvcc/mvccpb/kv.proto
