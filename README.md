### Description

Containerizing a Node.js web app offers benefits such as portability, scalability, isolation, and simplified deployment. It aligns well with modern DevOps practices and enables efficient application development, testing, and deployment workflows.

><b>Create an Image Using the Dockefile</b>

```
$ docker image build -t nodejs:1 .
```

><b> Create a container using above image</b>

```
$ docker container run --name nodeapp1 --restart always -d -p 9090:9090 nodejs:1
4009e6e4ab20cad6092fb70042a02a3a6d44431dd7521c8f3f4d2b43d39f5472
```
><b>Curl request to port 9090 of local machine</b>
```
$ curl http://localhost:9090
<h1><center>Hello World!</h1></center>
```
