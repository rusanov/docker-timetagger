FROM alpine:latest

RUN apk add --no-cache py3-pip
RUN pip3 install timetagger
RUN pip3 cache purge

COPY run.py /run.py

ENTRYPOINT [ "python3", "/run.py" ]