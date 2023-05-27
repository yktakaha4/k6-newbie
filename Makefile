#!/usr/bin/make -f

.PHONY: start
start:
	docker compose up

.PHONY: stop
stop:
	docker compose down

.PHONY: run
run:
	docker compose exec k6 ./run_test.sh
