FROM ubuntu:20.04 as build
ENV DEBIAN_FRONTEND noninteractive
WORKDIR serv

RUN apt update && apt upgrade -y
RUN apt install tzdata -y
RUN apt install -y build-essential cmake g++ libboost-dev libboost-system-dev \
      libboost-filesystem-dev libexpat1-dev zlib1g-dev \
      libbz2-dev libpq-dev libproj-dev \
      postgresql-server-dev-12 postgresql-12-postgis-3 \
      postgresql-contrib postgresql-12-postgis-3-scripts \
      apache2 php php-pgsql libapache2-mod-php \
      php-intl python3-setuptools python3-dev python3-pip \
      python3-psycopg2 python3-tidylib
      RUN apt install -y systemctl sudo osmium-tool wget postgresql-12

RUN useradd -d /srv/nominatim -s /bin/bash -m nominatim
ENV USERNAME=nominatim
ENV USERHOME=/srv/nominatim
RUN chmod a+x $USERHOME
RUN systemctl restart postgresql
RUN systemctl enable postgresql
RUN systemctl start postgresql
RUN (cd /serv && wget https://download.bbbike.org/osm/bbbike/Tehran/Tehran.osm.pbf)
RUN (cd /serv && chown postgres:postgres /serv)
RUN (cd /serv && chown postgres:postgres Tehran.osm.pbf)
RUN su postgres -c '/usr/lib/postgresql/12/bin/pg_ctl start -l logfile -D /serv/Tehran.osm.pbf'
# RUN sudo -u postgres createuser -s $USERNAME
# RUN sudo -u postgres createuser www-data
