FROM nginx:alpine

LABEL maintainer="Elrich HOUNGUE"

LABEL description="Site statique IMCP - TP CI/CD"

COPY siteweb/ /usr/share/nginx/html/


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
