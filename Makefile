generate-proto-v1-register:
	@echo " > Generate file register.proto"
	@protoc --proto_path=protob/v1/definitions \
		--go_out=protob/v1/generated/golang \
		--go_opt=paths=source_relative \
		--go-grpc_out=protob/v1/generated/golang \
		--go-grpc_opt=paths=source_relative \
		--go-grpc_opt=require_unimplemented_servers=true \
		protob/v1/definitions/register.proto 

generate-proto-v1-execution:
	@echo " > Generate file execution.proto"
	@protoc --proto_path=protob/v1/definitions \
	--go_out=protob/v1/generated/golang \
	--go_opt=paths=source_relative \
	--go-grpc_out=protob/v1/generated/golang \
	--go-grpc_opt=paths=source_relative \
	--go-grpc_opt=require_unimplemented_servers=true \
    protob/v1/definitions/execution.proto

generate-proto-v1: generate-proto-v1-register generate-proto-v1-execution 
