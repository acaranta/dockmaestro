FROM ubuntu:14.04
MAINTAINER Arthur Caranta <arthur@caranta.com>

RUN apt-get update
RUN apt-get -y install python-pip git
RUN pip install git+git://github.com/signalfuse/maestro-ng

ENTRYPOINT ["/usr/local/bin/maestro",  "-f", "/conf/conf.yml" ]
