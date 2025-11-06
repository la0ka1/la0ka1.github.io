# Use an official Ruby image as a base
FROM ruby:3.2

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install system dependencies that some gems might need
RUN apt-get update && apt-get install -y build-essential

# Copy your Gemfile and Gemfile.lock first
# This caches the gem installation layer unless the Gemfile changes
COPY Gemfile Gemfile.lock ./

# Install the gems
RUN bundle install

# Copy the rest of your Jekyll site source code
COPY . .

# Tell Docker that the container listens on port 4000
EXPOSE 4000

# The command to run when the container starts
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]