# Use Ubuntu base image
FROM ubuntu:22.04

# Install curl
RUN apt-get update && apt-get install -y curl

# Set working directory
WORKDIR /app

# Copy sample script
COPY sample.sh .

# Make script executable
RUN chmod +x sample.sh

# Default command
CMD ["./sample.sh"]
