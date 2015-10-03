FROM drydock/u14:prod

ADD . /tmp

RUN /tmp/install.sh && rm -rf /tmp
