FROM ruby:3.2-bullseye

# Install Node.js
RUN apt-get update
RUN apt-get install -y curl
# is this necessary?
# RUN apt-get install -y gcc
# RUN apt-get install -y make
RUN curl -fsSL https://deb.nodesource.com/setup_23.x | bash -
RUN apt-get install -y nodejs
# RUN npm install -g npm

# Verify installations
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
