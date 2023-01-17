FROM node
WORKDIR /app
COPY package.json .
RUN npm install
RUN npm install -g http-server
COPY index.html /app
EXPOSE 8080
CMD ["npx","http-server"]

# FROM node:14-alpine as builder

# WORKDIR /app

# COPY package.json .

# RUN npm install

# COPY . .

# RUN npm build

# FROM nginx:1.19-alpine

# COPY --from=builder /app/build /usr/share/nginx/html

# COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# EXPOSE 8080

# CMD [ "nginx", "-g", "daemon off;" ]
