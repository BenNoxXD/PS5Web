FROM alpine:latest

ENV PYTHONUNBUFFERED=1

RUN apk update
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

RUN mkdir ps5web
WORKDIR /ps5web
RUN mkdir css
COPY index.html webserver.py /ps5web/
COPY css/main.css /ps5web/css/

CMD ["python", "webserver.py"]
