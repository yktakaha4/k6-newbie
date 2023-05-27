#!/usr/bin/make -f

CASE ?= test-example

.PHONY: install
install:
	npm install
	docker compose build --no-cache

.PHONY: build
build:
	npm run build

.PHONY: start
start:
	docker compose up

.PHONY: stop
stop:
	docker compose down --remove-orphans

.PHONY: run
run: build
	docker compose run --rm k6 ./run_test.sh $(CASE)
