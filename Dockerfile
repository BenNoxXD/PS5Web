FROM alpine:latest

ENV PYTHONUNBUFFERED=1

RUN apk update
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

WORKDIR /opt/ps5web/
COPY index.html webserver.py /
COPY css/main.css css/

CMD ["python", "webserver.py"]