# Set the base image to Ubuntu
FROM python:2.7-slim

# File Author / Maintainer
MAINTAINER Maintaner Name

# Copy the application folder inside the container
ADD /my_application /my_application

# Get pip to download and install requirements:
RUN pip install -r /my_application/requirements.txt

# Expose ports
EXPOSE 80

# Set the default directory where CMD will execute
WORKDIR /my_application

# Set the default command to execute
# when creating a new container
# i.e. using CherryPy to serve the application
CMD python server.py
