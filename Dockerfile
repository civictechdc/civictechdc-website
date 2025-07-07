FROM ruby:3.2-bullseye

# Install Nodejs
RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_23.x | bash -
RUN apt-get install -y nodejs

# Verify installations and versions
RUN ruby -v && node -v && npm -v

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
COPY Gemfile* ./

# Install the application dependencies
RUN npm install
RUN bundle install

# Copy the application code into the container
COPY . .

# Expose port 4000 to the host
EXPOSE 4000

# Set up a volume to sync code changes
VOLUME [ "/usr/src/app" ]

# Command to run the application
CMD ["npm", "run", "serve"]
