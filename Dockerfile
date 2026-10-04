FROM nginx:alpine

# Listen on 3000 (the default Container port in OrbitOps) and list the files,
# since there is no index.html to show.
RUN printf 'server {\n  listen 3000;\n  root /usr/share/nginx/html;\n  location / {\n    autoindex on;\n    default_type text/plain;\n  }\n}\n' > /etc/nginx/conf.d/default.conf

COPY . /usr/share/nginx/html

EXPOSE 3000
