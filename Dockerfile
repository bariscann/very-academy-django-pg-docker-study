FROM python:3.10.1-alpine3.15

LABEL org.opencontainers.image.authors="bc.brscn@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
# WORKDIR /usr/src/app

# COPY requirements.txt ./
# RUN pip uninstall django
# RUN pip install -r requirements.txt

# # RUN mkdir /app

# COPY ./app /app

# RUN adduser -D user
# USER user