# Use an official Python runtime as a base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file
COPY requirements.txt .

# Update
RUN apt-get update

# Install virtualenv
RUN pip install virtualenv

# Create a virtual environment
RUN python -m venv venv

# Activate the virtual environment
RUN /bin/bash -c "source venv/bin/activate"

# Install dependencies into the virtual environment
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Specify the command to run your application
CMD ["python", "main.py"]

