
# we are using a simple image with Node installed
FROM node:lts-alpine

# Using a simple http server to serve static content
RUN npm install -g http-server

# Use the 'app' folder as the current working directory
WORKDIR /app

# We copy both 'package.json' and (if available) 'package-lock.json'
COPY package*.json ./

# Let npm install project dependencies
RUN npm install

# Now copy all project files and folders to the current working directory (/app)
COPY . .

# To avoid the error message "error:0308010C:digital envelope routines::unsupported" set --openssl-legacy-provider
# seems to be an webpack issue: https://github.com/webpack/webpack/issues/14532
# see https://stackoverflow.com/questions/69692842/error-message-error0308010cdigital-envelope-routinesunsupported
ENV NODE_OPTIONS=--openssl-legacy-provider

# Build the app for production with minification
RUN npm run build

# We expose port 8080
EXPOSE 8080

# Run the http-server
CMD [ "http-server", "dist" ]