FROM skchawala/docker-node-canvas-deps

RUN apt-get update && apt-get install -qq wget yum

# install libre office version
RUN wget https://downloadarchive.documentfoundation.org/libreoffice/old/7.0.0.2/deb/x86_64/LibreOffice_7.0.0.2_Linux_x86-64_deb.tar.gz

RUN tar -xvf LibreOffice_7.0.0.2_Linux_x86-64_deb.tar.gz \
 && cd LibreOffice_7.0.0.2_Linux_x86-64_deb/DEBS \
 && yum localinstall *.deb --skip-broken \
