FROM postgres:11.3-alpine

COPY ./sql_scripts/ /docker-entrypoint-initdb.d/

USER postgres

ENV PGUSER=unity
ENV PGDATABASE=tpch


RUN #initdb /var/lib/postgresql/data &&\
    echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf &&\
    echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf &&\    
    pg_ctl start &&\
    psql -d tpch -U unity

VOLUME [ "/pgdata" ]

EXPOSE 5432
