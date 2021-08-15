
CLIENT_IMAGE_TAG = "vgarrido:complex-client"
SERVER_IMAGE_TAG = "vgarrido:complex-server"
WORKER_IMAGE_TAG = "vgarrido:complex-worker"

BUILD_CLIENT_DOCKERFILE:
	@docker build -f ./client/Dockerfile.dev ./client/. -t $(CLIENT_IMAGE_TAG)

RUN_CLIENT:
	@docker run -it -t $(CLIENT_IMAGE_TAG)

BUILD_SERVER_DOCKERFILE:
	@docker build -f ./server/Dockerfile.dev ./server/. -t $(SERVER_IMAGE_TAG)

RUN_SERVER:
	@docker run -it -t $(SERVER_IMAGE_TAG)

BUILD_WORKER_DOCKERFILE:
	@docker build -f ./worker/Dockerfile.dev ./worker/. -t $(WORKER_IMAGE_TAG)

RUN_WORKER:
	@docker run -it -t $(WORKER_IMAGE_TAG)
