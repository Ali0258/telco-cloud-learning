# Lesson 15-16: CI/CD and Observability
# All Docker commands used

# Step 1: Run Node Exporter
docker run -d \
  --name node-exporter \
  -p 9100:9100 \
  prom/node-exporter

# Step 2: Run Prometheus
docker run -d \
  --name prometheus \
  -p 9090:9090 \
  -v ~/prometheus.yml:/etc/prometheus/prometheus.yml \
  prom/prometheus

# Step 3: Run Grafana
docker run -d \
  --name grafana \
  -p 3001:3000 \
  grafana/grafana

# Step 4: Run Jenkins
docker run -d \
  --name jenkins \
  -p 8080:8080 \
  jenkins/jenkins:lts

# Stop all containers
docker stop jenkins grafana prometheus node-exporter

# Start all containers again
docker start node-exporter prometheus grafana jenkins
