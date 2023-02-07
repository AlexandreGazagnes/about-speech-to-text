FROM python:3.9-bullseye 

# date
RUN rm -f /etc/localtime  && ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime 
RUN apt update -y && apt upgrade -y
RUN apt install htop nano python3-pip python3-venv -y

# Workdir
WORKDIR /app

# requirements
COPY ./requirements.txt /app/requirements.txt
RUN python -m pip install -r requirements.txt

# Copy the app 
COPY . /app

