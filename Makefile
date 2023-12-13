OCI_IMAGE_BUILDER ?= docker buildx
COMPOSE_RUNNER ?= docker compose

.PHONY: image
image:
	$(OCI_IMAGE_BUILDER) build . -t ghcr.io/bryopsida/wireguard:local

.PHONY: test
test:
	$(COMPOSE_RUNNER) -f docker-compose.test.yml run sut