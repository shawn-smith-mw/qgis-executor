FROM debian:buster-slim

WORKDIR /qgis

RUN apt update && apt-get -y install wget gnupg software-properties-common

RUN wget -qO - https://qgis.org/downloads/qgis-2020.gpg.key | gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import && chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg && add-apt-repository "deb https://qgis.org/debian $(lsb_release -c -s) main"

RUN apt update && apt-get -y install qgis qgis-plugin-grass python-qgis

ENV QGIS_PATH=/usr/share/qgis
ENV PYTHONPATH=$QGIS_PATH/python
ENV LD_LIBRARY_PATH=$QGIS_PATH/lib
