FROM ubuntu:14.04
MAINTAINER Arthur Caranta <arthur@caranta.com>

RUN apt-get update
RUN apt-get -y install python-pip git
#RUN pip install git+git://github.com/signalfuse/maestro-ng
#Disrty hack in order to support insecure registries :
RUN git clone https://github.com/signalfuse/maestro-ng
RUN /usr/bin/perl -p -i -e "s/for dlstatus in self.container.ship.backend.pull\(stream=True, \*\*image\):/for dlstatus in self.container.ship.backend.pull\(stream=True, insecure_registry=True, **image\):/g" /maestro-ng/maestro/plays/tasks.py
RUN pip install /maestro-ng/

ENTRYPOINT ["/usr/local/bin/maestro",  "-f", "/conf/conf.yml" ]
