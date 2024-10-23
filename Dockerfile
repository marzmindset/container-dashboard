# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python (to serve the HTML file)
RUN apt-get update && apt-get install -y python3

# Set the working directory inside the container
WORKDIR /app

# Copy the index.html file into the container's /app directory
COPY index.html /app/index.html

# Expose port 8000 to allow external access
EXPOSE 8000

# Run Python's built-in HTTP server on port 8000
CMD ["python3", "-m", "http.server", "8000"]
