#!/bin/bash

openssl req -x509 -batch -nodes -newkey rsa:2048 \
-keyout logstash/config/logstash-forwarder.key \
-out logstash/config/logstash-forwarder.crt \
-subj /CN=your.logstashdomain.tld
