#!/bin/bash

curl -O "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"
gunzip GeoLiteCity.dat.gz
