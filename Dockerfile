FROM node:18 as builder
WORKDIR /home
COPY ./package-lock.json /home
COPY ./package.json /home
RUN npm ci
ADD ./ /home
RUN npm i && npm run build

FROM nginx
COPY --from=0 /home/public /usr/share/nginx/html

# sudo docker build -t frankyya-blog-nginx .
# sudo docker run --name frankyya-blog-nginx -d -p 50200:80 frankyya-blog-nginx
