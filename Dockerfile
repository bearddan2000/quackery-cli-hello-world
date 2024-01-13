FROM python:3.10-alpine3.18

WORKDIR /workspace

RUN apk update

RUN apk add git

RUN git clone https://github.com/GordonCharlton/Quackery/ quack-lang

WORKDIR /code

COPY bin .

CMD "./run.sh"