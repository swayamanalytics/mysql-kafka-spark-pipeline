# mysql-kafka-spark-pipeline

This repos is built by taking inspiration from 

https://github.com/developershomes/Spark.git

### Clone this repos

```

git clone  https://github.com/swayamanalytics/mysql-kafka-spark-pipeline.git

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
