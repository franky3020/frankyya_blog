FROM nginx
COPY ./public /usr/share/nginx/html

# docker build -t frankyya-blog-nginx .
# docker run --name frankyya-blog-nginx -d -p 50200:80 frankyya-blog-nginx
