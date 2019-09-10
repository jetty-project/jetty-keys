FROM openjdk:7-jre

ADD keys/KEYS /keys/

#RUN set -x \
#    && ls -lrt /keys/ \
#    && gpg -v --import /keys/KEYS
