#!/bin/bash

# Wait until HDFS is ready to accept commands
attempts=10
until hdfs dfs -ls / > /dev/null 2>&1 || [ $attempts -eq 0 ]; do
  echo "Waiting for HDFS to start..."
  sleep 3
  attempts=$((attempts - 1))
done

# Create Hive warehouse directory and grant permissions
hdfs dfs -mkdir -p /user/hive/warehouse
hdfs dfs -chown -R hive:hive /user/hive
hdfs dfs -chmod 777 /user/hive/warehouse

# Optional: set temp dir
hdfs dfs -mkdir -p /tmp
hdfs dfs -chmod -R 777 /tmp
