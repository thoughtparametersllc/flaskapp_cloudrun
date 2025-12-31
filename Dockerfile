# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV FLASK_ENV=production
ENV WORKERS=1
ENV PTHONUNBUFFERED=1

# Make start.sh executable
RUN chmod +x start.sh


# Run the application
CMD ["./start.sh"]