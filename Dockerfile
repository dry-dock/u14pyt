FROM drydock/u14:prod

ADD . /u14pyt

RUN /u14pyt/install.sh
