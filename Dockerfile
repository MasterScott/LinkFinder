FROM python:3.6.6-alpine3.8

COPY linkfinder.py setup.py README.md run.sh /root/LinkFinder/
WORKDIR /root/LinkFinder
RUN python setup.py install; chmod +x run.sh

ENTRYPOINT [ "./run.sh" ]
