docker exec -it dockerelk_logstash_1 logstash -t -f /etc/logstash/conf.d/stdin-logstash.conf && \
docker exec -it dockerelk_logstash_1 logstash -f /etc/logstash/conf.d/stdin-logstash.conf
