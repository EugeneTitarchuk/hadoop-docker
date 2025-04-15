if [ ! -d "/opt/hadoop/data/nameNode/current" ]; then
    echo "Formatting NameNode..."

    hdfs namenode -format -clusterID CID-2947af0f-b46f-497c-8152-2c9ec196a3d4 -force
fi

hdfs --daemon start namenode

sleep 5

echo "Change root access..."
hdfs dfs -chmod 777 /

tail -f /dev/null