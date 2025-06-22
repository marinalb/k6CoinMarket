# Use a minimal base image
FROM debian:bullseye-slim

# Install dependencies and K6
RUN apt-get update && \
    apt-get install -y curl ca-certificates && \
    curl -s https://github.com/grafana/k6/releases/download/v0.48.0/k6-v0.48.0-linux-amd64.tar.gz | tar -xz && \
    mv k6-v0.48.0-linux-amd64/k6 /usr/bin/k6 && \
    chmod +x /usr/bin/k6 && \
    apt-get remove --purge -y curl && \
    rm -rf /var/lib/apt/lists/* k6-v0.48.0-linux-amd64

# Set working directory
WORKDIR /app

# Copy your k6 script into the container
COPY k6.js .

# Run K6 with the script
CMD ["k6", "run", "k6.js"]
