# 🐘 Apache Hadoop Cluster with Docker Compose

This repository provides a lightweight, multi-node Hadoop cluster using the official `apache/hadoop` Docker image and Docker Compose. It supports scalable `worker` containers that run both `DataNode` and `NodeManager` services.

---

## 📦 Components

- **NameNode** – manages HDFS metadata
- **ResourceManager** – manages YARN job scheduling
- **Workers** (scalable) – each runs:
  - HDFS **DataNode**
  - YARN **NodeManager**

---

## 📦 Repository structure description

- **configuration** – directory that contains configuration files. Not used in containers to simplify start command. Added as an example.
- **config** – configuration based on environment variables. Analog for files from the configuration directory.
- **config.original** – file from the original Hadoop repo. Added as an example.
- **docker-compose.yaml** – docker compose to create a cluster with 3 defined workers

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-user/hadoop-docker-cluster.git
cd hadoop-docker-cluster
```

### 2. Build the cluster

```bash
docker-compose up -d --scale worker=3
```

### 3. Access Web Interfaces

NameNode UI: http://localhost:9870
ResourceManager UI: http://localhost:8088