FROM drydock/u14:{{%TAG%}}

ADD . /u14pyt

RUN /u14pyt/install.sh
