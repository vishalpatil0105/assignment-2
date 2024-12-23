
FROM docker.elastic.co/logstash/logstash:8.17.0
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
# COPY pipeline/ /usr/share/logstash/pipeline/
# COPY config/ /usr/share/logstash/config/
COPY ./logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY ./logstash.yaml /usr/share/logstash/config/
