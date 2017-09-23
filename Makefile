all:
	docker build -t souo/ubuntu-java:latest	ubuntu16.04-java8
	docker build -t souo/hadoop:latest hadoop
	docker build -t souo/hadoop-master:latest hadoop-master
	docker build -t souo/hadoop-slave:latest hadoop-slave
	docker-compose build

run:
	docker-compose up -d
	echo "http://localhost:50070 for namenode"
	echo "http://localhost:8088 for YARN"

down:
	docker-compose down
