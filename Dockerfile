# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY --from=build-stage /app/dist /usr/share/nginx/html
RUN chgrp -R 0 /usr/share/nginx/html && \
    chmod -R g=u /usr/share/nginx/html
COPY entrypoint.sh /usr/share/nginx/
ENTRYPOINT ["/usr/share/nginx/entrypoint.sh"]
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]