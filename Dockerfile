FROM node:alpine as builder
WORKDIR '/Users/kaushalkumarjha/simpleweb'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
FROM nginx
COPY --from=builder Users/kaushalkumarjha/simpleweb   /usr/share/nginx