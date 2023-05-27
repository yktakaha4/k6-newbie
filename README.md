# k6-newbie

Performance testing example with [k6](https://k6.io/) and [Grafana](https://grafana.com/)

## Prerequirements

- Node v18
- Docker Compose (version 3)

## Usage

```sh
# Install
make install

# Start docker
make start

# Run example test
make run
# Specify case
make run CASE=sample-http-api-test

# Access test results
# http://localhost:3000/dashboards

# stop docker
make stop
```
