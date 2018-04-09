# To build and run this container locally, try a command like:
#
#        docker build -t symantec-certificate-checker .
#        docker run -it -v yourlocaldatadir-withdomainscsv:/usr/src/app/data symantec-certificate-checker /bin/bash
#               Then run within the directory /usr/src/app inside container: ruby symantec.rb data/your.csv
#               This will output the results as this JSON file, your.csv_results.json, in the data directory you mounted as a volume for the Docker container
#

FROM ruby:latest
MAINTAINER Øyvind Bye Skille <oyvind@byeskille.no>

RUN mkdir /usr/src/app && \
    cd /usr/src/app && \
    git clone https://github.com/byeskille/symantec-certificate-checker . && \
    git submodule update --init --recursive

RUN cd /usr/src/app/ && \
    bundle install
