FROM nginx

Label maintainer="Ulrich"

RUN apt-get update && apt-get install git -y

WORKDIR /tmp

RUN git clone https://github.com/diranetafen/static-website-example.git

RUN rm -rf /usr/share/nginx/html/*

RUN mv /tmp/static-website-example/* /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
