FROM python:3.9.5

ENV PYTHONPATH /usr/src/app

RUN mkdir -p $PYTHONPATH
RUN mkdir -p $PYTHONPATH/static
RUN mkdir -p $PYTHONPATH/media

# where the code lives
WORKDIR $PYTHONPATH

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y  binutils libproj-dev gdal-bin python3-gdal libheif-examples \
    gettext

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r ./requirements.txt

# install app
COPY . .
