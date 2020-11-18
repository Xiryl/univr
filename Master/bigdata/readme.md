## setup

- install cloudera docker

## Quick run

- run docker service
- view available containers `docker ps -a`
- start container ``docker start cloudera` (the def. webserver will point to `localhost:8888`)
- get the container bash `docker exec -it cloudera /bin/bash`
- run the .jar file `hadoop jar <jar name> <in> <out> <qta reducer>`

## Exercise 1 - WordCount
