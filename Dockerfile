FROM ubuntu:14.04
ARG node_url
RUN sudo bash build.sh $node_url
