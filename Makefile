help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

all: setup fmt build

setup: ## Generate xcode project
	@tuist fetch
	@tuist generate --no-open

fmt: ## Format code
	@swift-format --configuration ./swift-format.json \
		--in-place --recursive .

build: ## Format code
	@tuist build

test: ## Format code
	@tuist test
