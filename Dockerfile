# Use a base image with Node.js installed
FROM node:18.17.0


# Copy package.json and package-lock.json to the container
COPY . .


RUN yarn global add mintlify



# Copy all the app files to the container
COPY . .

# Expose port 3333
EXPOSE 3333

# Start the Mintlify development server when the container is run mintlify dev --port 3333
CMD ["mintlify", "dev", "--port", "3333"]
