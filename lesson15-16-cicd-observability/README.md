# Lesson 15-16: CI/CD and Observability

## What I built
A complete monitoring stack using Docker containers.

## Tools Used
- Docker
- Node Exporter - collects machine metrics
- Prometheus - stores and processes metrics
- Grafana - visualizes metrics on dashboard
- Jenkins - CI/CD automation server

## What I learned
- DevOps means Dev and Ops teams working together
- CI/CD automates testing and deployment
- Jenkins is the automation robot
- Prometheus collects metrics like Huawei U2000
- Grafana shows beautiful dashboards

## Connection to 5G
These same tools monitor real 5G networks:
- Node Exporter on every AMF/SMF/UPF server
- Prometheus collects all network metrics
- Grafana shows network KPIs like call drop rate
- Jenkins deploys network function updates

## Ports Used
- Node Exporter = port 9100
- Prometheus    = port 9090
- Grafana       = port 3001
- Jenkins       = port 8080
