FROM ruby:3.2-bullseye

# Install Nodejs
RUN apt-get update && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_23.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Verify installations and versions
RUN ruby -v && node -v && npm -v

# Copy the application code (excluding files in .dockerignore)

# Set the working directory inside the container
WORKDIR /app

# Install dependencies with caching to improve build times
COPY package.json package-lock.json* ./
COPY Gemfile Gemfile.lock* ./

# Install dependencies
RUN npm install
RUN bundle install

COPY . .

EXPOSE 4000

# Command to run the application
CMD ["npm", "run", "serve"]
