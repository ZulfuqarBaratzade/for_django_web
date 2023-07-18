#puull official base image
FROM python:3.10

RUN apt-get update
RUN apt-get install python3-dev build-essential -y
# pip requirements
RUN pip3 install --upgrade setuptools pip
RUN pip3 install virtualenv && python3 -m virtualenv /opt/venv

# ADD ./requirements /tmp/requirements.txt
# RUN pip3 install -r /tmp/requirements.txt
WORKDIR /srv/app
COPY . /srv/app
WORKDIR /srv/app
