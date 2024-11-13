FROM fluentd:v1.16.2-debian-1.1

USER root

RUN apt-get update &&\
    apt-get install curl -y &&\
    gem install elasticsearch -v 7.6 &&\
    gem install fluent-plugin-elasticsearch &&\
    gem install fluent-plugin-opensearch &&\
    gem install fluent-plugin-rewrite-tag-filter &&\
    gem install fluent-plugin-multi-format-parser &&\
    fluent-gem install fluent-plugin-grafana-loki -v 1.2.20

USER fluent
