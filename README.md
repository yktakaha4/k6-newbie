# k6-newbie

- Performance testing example with [k6](https://k6.io/) and [Grafana](https://grafana.com/)
  - Use [ybkuroki/go-webapp-sample](https://github.com/ybkuroki/go-webapp-sample) as test target

## Prerequirements

- Docker Compose (version 3)

## Usage

```sh
# Start docker environments
make start

# Access sample application
# http://localhost:8080

# Run test
make run

# Access test results
# http://localhost:3000/dashboards

# stop docker environments
make stop
```
