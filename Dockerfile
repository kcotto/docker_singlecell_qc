ADD file:8a50ad78a668527e974b05a3dfbfd64760de3cb643ceb8a8805d21f6ceab3389 in / 
CMD ["bash"]

LABEL org.label-schema.license=GPL-2.0 org.label-schema.vcs-url=https://github.com/rocker-org/r-ubuntu org.label-schema.vendor=Rocker Project maintainer=Dirk Eddelbuettel <edd@debian.org>


RUN /bin/sh -c useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
RUN /bin/sh -c apt-get update 	&& apt-get install -y --no-install-recommends 		software-properties-common                 dirmngr                 ed 		less 		locales 		vim-tiny 		wget 		ca-certificates         && add-apt-repository --enable-source --yes "ppa:marutter/rrutter4.0"         && add-apt-repository --enable-source --yes "ppa:c2d4u.team/c2d4u4.0+"
RUN /bin/sh -c echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
