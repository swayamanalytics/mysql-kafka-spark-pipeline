# mysql-kafka-spark-pipeline

This repos is built by taking inspiration from 

https://github.com/developershomes/Spark.git
https://blog.heylinux.com/en/2025/09/quickstart-debezium-mysql-kafka-cdc/
https://batuhanorhon.medium.com/efficient-data-streaming-implementing-kafka-connect-and-debezium-with-docker-f5a5d24f5aca

### Clone this repos

```

git clone  https://github.com/swayamanalytics/mysql-kafka-spark-pipeline.git

```

### Build environment
Start kafka, mysql, kafka-connect same order

Once kafka connect started run below

Register Source Connector
```bash
curl -s -X POST http://localhost:8083/connectors \
-H "Content-Type: application/json" \
-d @local-setup/scripts/register-mysql.json
Update Source Connector config (optional)
```
Update Source Connector config (optional)
```bash
jq '.config' register-mysql.json | \
curl -s -X PUT http://localhost:8083/connectors/mysql-inventory-connector/config \
-H "Content-Type: application/json" \
-d @- | jq .
Check Source Connector status
```
Check Source Connector status
``` bash
curl -s localhost:8083/connectors/mysql-inventory-connector/status | jq .
```



### Build the docker image
```
cd mysql-kafka-spark-pipeline/docker
docker build . -t sparkhome

```

### Start the docker container

```

docker run -p 8888:8888 --name spark -d sparkhome

```

### Use Jupyter notebook

```

docker logs <containerid>

```

Get the jupyter url from the above command and login


## Start Kafka
```bash
docker compose -f local/docker-compose.yml up -d 
```
## Check running status
```bash 
docker compose -f local/docker-compose.yml ps --format "#{{.State}}# {{.Service}}" | sed -e 's/#running#/✅/' | sed -r 's/#[a-z]+#/❌/' 
```
## Start Pinot
```bash
docker compose -f local/docker-compose-pinot.yml up -d 
```
