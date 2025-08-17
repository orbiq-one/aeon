.PHONY: dev web cli build

# run both dev servers (use 2 terminals normally)
dev: web cli

# run Next.js
web:
	cd apps/web && pnpm dev

# run Go CLI
cli:
	cd apps/aeonctl && go run ./cmd -name Aeon

# build both
build: build-web build-cli

build-web:
	cd apps/web && pnpm build

build-cli:
	cd apps/aeonctl && go build -o ../../bin/aeonctl ./cmd
