FROM node:14.17.2

# set working directory
WORKDIR /app

# add path
ENV PATH /app/node_modules/.bin:$PATH

# Copy package.json
COPY package.json /app/package.json

# install the required pacakges
RUN npm install

# install angular CLI globally
RUN npm install -g @angular/cli@latest

# copy all the contents
COPY . /app

# start application
CMD ng serve --host 0.0.0.0