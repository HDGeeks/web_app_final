# Use an official Python runtime as a base image
FROM python:3.9-slim

WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt



# Set the environment variable for Flask to disable buffering
ENV PYTHONUNBUFFERED=1

# Set the environment variables for Flask
ENV FLASK_APP=app.py



# Command to run the Flask app with specific host and port
CMD ["python", "app.py"]
