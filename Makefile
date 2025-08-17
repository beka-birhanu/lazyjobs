generate-proto-v1-workflow:
	@echo " > Generate file workflow.proto"
	@protoc --proto_path=protob/v1/definitions \
		--go_out=protob/v1/generated/golang \
		--go_opt=paths=source_relative \
		--go-grpc_out=protob/v1/generated/golang \
		--go-grpc_opt=paths=source_relative \
		--go-grpc_opt=require_unimplemented_servers=true \
		protob/v1/definitions/workflow.proto 

generate-proto-v1: generate-proto-v1-workflow
