FROM python:3-alpine

COPY SonarrSync.py /
COPY requirements.txt /
COPY startup.sh /

RUN  pip install -r requirements.txt && chmod 755 /startup.sh

ENTRYPOINT [ "sh","/startup.sh" ]
