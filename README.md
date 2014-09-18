dockmaestro
===========

a container to work with maestrong

let's say you have a maestrong configuration named /fu/bar/myconf.yml

if you want to start this on a docker host without install python and its pip modules :
```
docker run -t -i -v /fu/bar/myconf.yml:/conf/conf.yml acaranta/dockmaestro start
```
or, if the myconf.yml is in the current dir :
```
docker run -t -i -v $(pwd)/myconf.yml:/conf/conf.yml maestro start
```
