FROM ubuntu:latest

RUN apt-get update && apt-get install -y socat && apt-get clean

RUN useradd app

USER app

ENV PORT 80

EXPOSE 1234

CMD socat TCP4-LISTEN:1234,fork,reuseaddr TCP4:target:$PORT