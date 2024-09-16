# Use the official Python image from the Docker Hub
FROM python:3.9.7-slim-buster

# Set the working directory inside the container
WORKDIR /sample-flask-app

# Copy the current directory contents into the container at /sample-flask-app
COPY . .

# Install the required packages
RUN pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Run the app with Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
