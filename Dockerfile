# Base image: Lightweight Linux with Java and Node.js for Playwright
FROM debian:bullseye-slim

# Install required packages
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    curl \
    wget \
    git \
#    nodejs \
#    npm \
    && rm -rf /var/lib/apt/lists/*

# Install Playwright and Cucumber globally
#RUN npm install -g playwright @cucumber/cucumber

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Create results directory
RUN mkdir -p /app/results

# Default command to run tests
CMD ["npx", "cucumber-js", "--format", "pretty", "--format", "json:/app/results/cucumber-report.json"]
