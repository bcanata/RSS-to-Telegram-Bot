# Use an official Python runtime as a parent image
FROM python:3.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "install", "nano"]

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r /app/requirements.txt
# Define environment variable
ENV TOKEN X
ENV CHATID X
ENV DELAY 60

# Run app.py when the container launches
CMD ["python", "telegramRSSbot.py"]
