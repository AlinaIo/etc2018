FROM node:8.9.4
RUN mkdir -p /code
WORKDIR /code
ADD . /code
RUN npm install -g -s --no-progress yarn && \
	yarn install
CMD yarn run dev-server
EXPOSE 8080
