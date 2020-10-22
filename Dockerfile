# FROM suttang/gollum 

# RUN gem install omniauth-github omnigollum github-markup

# COPY . /root/wikidata

FROM ubuntu:18.04

MAINTAINER Daniel Hunacek <daniel.hunacek@hevs.ch>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get upgrade -y  && \
    apt-get install -y -q build-essential ruby-full python python-docutils ruby-bundler libicu-dev libreadline-dev libssl-dev zlib1g-dev git-core cmake && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# Install gollum
RUN gem install gollum redcarpet github-markdown omniauth-github omnigollum github-markup

# Initialize wiki data
RUN mkdir /root/wikidata
RUN git init /root/wikidata

COPY . /root/wikidata
WORKDIR /root/wikidata

# Patch gollum for omnigollum
RUN export GEM_DIR=$(dirname "$(gem which gollum)")
RUN cp -r /root/wikidata/gollum-patch/css/* "$(dirname "$(gem which gollum)")/gollum/public/gollum/css" && \
    cp -r /root/wikidata/gollum-patch/templates/* "$(dirname "$(gem which gollum)")/gollum/templates" && \
    cp -r /root/wikidata/gollum-patch/views/* "$(dirname "$(gem which gollum)")/gollum/views"

# Expose gollum port 80
EXPOSE 80

ENTRYPOINT ["/usr/local/bin/gollum", "/root/wikidata", "--config", "config.rb", "--port", "80"]
