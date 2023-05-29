#!/usr/bin/make -f

CASE ?= example-test

.PHONY: install
install:
	git submodule update --init --recursive
	npm install
	docker compose build --no-cache

.PHONY: build
build:
	npm run build

.PHONY: start
start:
	mkdir -p dist/
	docker compose up

.PHONY: stop
stop:
	docker compose down --remove-orphans

.PHONY: run
run: build
	docker compose run --rm k6 ./run_test.sh $(CASE)
