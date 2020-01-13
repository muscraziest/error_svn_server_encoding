FROM cdalvaro/saltstack-master:2018.3.4
RUN apt-get update \
    && apt-get -y install subversion
COPY salt-master.sh /salt-master.sh
ENTRYPOINT ["/bin/bash", "/salt-master.sh"]
