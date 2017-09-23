docker-hadoop-cluster 
-----------------------

Multiple node cluster on Docker for self development. docker-hadoop-cluster is suitable for testing your patch for Hadoop which has multiple nodes.


Build the images 
------------
This image includes ORACKE-JDK-8, hadoop package configurations etc. It also include a pre build 64b version of Hadoop nativelibs(ubuntu 16.04, hadoop 2.7.4)。

```
$ cd docker-hadoop-cluster
$ make
```

Once you build hadoop-base image, you can launch hadoop cluster by using docker-compose.
```
$ docker-compose up -d
```
or
```
$ make run
```

See [http://localhost:50070](http://localhost:50070) for NameNode or [http://localhost:8088](http://localhost:8088) for ResourceManager.

```
$ make down
```

shutdowns your cluster.

License
-------

[Apache License Version2.0](http://www.apache.org/licenses/LICENSE-2.0) This images are modified from [ewuathe/docker-hadoop-cluster](https://github.com/Lewuathe/docker-hadoop-cluster) and [sequenceiq/hadoop-docker](https://github.com/sequenceiq/hadoop-docker).