#Base image
FROM node:8.9.4-alpine

#Add application files
RUN mkdir -p /code
WORKDIR /code
ADD . /code

#Install yarn && build project
RUN npm install -g -s --no-progress yarn && \
	yarn install --pure-lockfile

EXPOSE 8080

#Start application
CMD yarn run dev-server
