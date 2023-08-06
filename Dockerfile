# System
# System
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Installing Dependancies

# Install Python dependencies

RUN apt update
RUN apt-get clean

RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Set the LD_LIBRARY_PATH environment variable
ENV LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y git wget python3-dev python3-pip unzip






# Copy necessary files to the Docker image
COPY . /app/trash/iotiot




