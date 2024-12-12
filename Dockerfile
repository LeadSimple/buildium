# Use Ruby 3.1.2 as the base image
FROM ruby:3.1.2-slim

# Install build dependencies, Node.js, and Java
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    default-jre \
    jq \
    moreutils \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy only the files needed for bundle install
COPY Gemfile Gemfile
COPY buildium-ruby.gemspec buildium-ruby.gemspec

# Create empty version.rb file with placeholder version
RUN mkdir -p lib/buildium-ruby && \
    echo 'module Buildium\n  VERSION = "0.0.0"\nend' > lib/buildium-ruby/version.rb

# Install dependencies
RUN bundle install

# Copy the rest of the application
COPY . .

# Set the default command
CMD ["bundle", "install"]
