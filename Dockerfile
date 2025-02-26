FROM ubuntu:22.04

# Update packages and install curl
RUN apt-get update && apt-get install -y curl

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Set environment variable
ENV PORT=8080

# Expose port
EXPOSE 8080

# Command to run when container starts
CMD ["bash"]
