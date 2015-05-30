FROM python
MAINTAINER benwhitehead

RUN apt-get update && apt-get install -y python-pip

RUN pip install httpie

RUN cd /usr/bin && wget http://stedolan.github.io/jq/download/linux64/jq && chmod +x jq

CMD /bin/bash

