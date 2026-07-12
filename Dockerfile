FROM nginx:alpine

RUN printf '%s\n' \
    '<!doctype html>' \
    '<html>' \
    '<head><title>Custom Nginx</title></head>' \
    '<body><h1>Hello from my custom Nginx image!</h1></body>' \
    '</html>' \
    > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
