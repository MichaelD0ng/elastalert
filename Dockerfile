FROM vrviumichael/ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y python-pip \
	&& pip install elastalert \
    && git clone https://github.com/Yelp/elastalert.git /elastalert \
    && mkdir -p  /elastalert-config

ENTRYPOINT ["/usr/bin/python"]


