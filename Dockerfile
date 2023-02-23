FROM nginx

ENV APP_HOME /var/www/html

COPY dist ${APP_HOME}/
COPY swaggerui ${APP_HOME}/swaggerui/

RUN chmod -R 755 ${APP_HOME}

EXPOSE 80

WORKDIR ${APP_HOME}
