FROM mariadb:10.5.1

ENV MYSQL_RANDOM_ROOT_PASSWORD yes
ENV MYSQL_DATABASE churchclerk
ENV MYSQL_USER apiapp

EXPOSE 330

