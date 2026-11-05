FROM nginx:stable-alpine
LABEL org.opencontainers.image.title="jiyoung-workstation-web"
COPY app/ /usr/share/nginx/html/
EXPOSE 80
