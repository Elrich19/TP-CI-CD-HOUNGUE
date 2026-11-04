FROM nginx:alpine

COPY siteweb/ /usr/share/nginx/html/


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
