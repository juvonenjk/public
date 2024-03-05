FROM postgres
ENV POSTGRES_PASSWORD cultivator
ENV POSTGRES_DB cultivator
COPY ./init_cultivator.sql /docker-entrypoint-initdb.d/
