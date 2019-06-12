echo "stoping zookeeper...."
ssh atguigu@hadoop101 /opt/module/zookeeper-3.4.10/bin/zkServer.sh stop
ssh atguigu@hadoop102 /opt/module/zookeeper-3.4.10/bin/zkServer.sh stop
ssh atguigu@hadoop103 /opt/module/zookeeper-3.4.10/bin/zkServer.sh stop
echo "zookeeper stop over!"
echo "===================="
echo "stoping hdfs-yarn..."
ssh atguigu@hadoop101 /opt/module/hadoop-2.7.2/sbin/stop-dfs.sh
ssh atguigu@hadoop102 /opt/module/hadoop-2.7.2/sbin/stop-yarn.sh
ssh	atguigu@hadoop103 /opt/module/hadoop-2.7.2/sbin/mr-jobhistory-daemon.sh stop historyserver
echo "hdfs-yarn stop over!"
echo "===================="
echo "stoping hbase..."
ssh atguigu@hadoop101 /opt/module/hbase/bin/hbase-daemon.sh stop master
ssh atguigu@hadoop101 /opt/module/hbase/bin/hbase-daemon.sh stop regionserver
ssh atguigu@hadoop102 /opt/module/hbase/bin/hbase-daemon.sh stop master
ssh atguigu@hadoop102 /opt/module/hbase/bin/hbase-daemon.sh stop regionserver
ssh atguigu@hadoop103 /opt/module/hbase/bin/hbase-daemon.sh stop master
ssh atguigu@hadoop103 /opt/module/hbase/bin/hbase-daemon.sh stop regionserver
echo "hbase stop over!"