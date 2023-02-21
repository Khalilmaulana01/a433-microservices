# using base image Node.js version 14
FROM node:14

# setting the working directory in the container
WORKDIR /app

# copy the source code from source to destination in container (/app)
COPY . . 

# set the environment variable for the node and databse
ENV NODE_ENV=production DB_HOST=item-db

# run the npm to install dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# expose port for the application to run
EXPOSE 8080

# run the command to start a server when container is ready
CMD ["npm", "start"]