FROM nginx:alpine
COPY . /usr/staticsite
RUN ln -s /usr/staticsite/index.html /usr/share/nginx/html/index.html
