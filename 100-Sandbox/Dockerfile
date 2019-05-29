# App Server Docker File

FROM docker.io/alpine

ENV container docker
ARG SVC_ACCT=sandbox

#create the user, supress home dir creation with -m, created above
RUN :; \
addgroup --g 9968 sandboxcontainer; \
adduser -u 1002 -G sandboxcontainer -H -D $SVC_ACCT; \
#stamp a date in the home directory
echo `date` >> /home/container_build_date_$RANDOM.txt; \
#ensure everything is patched
apk update; \
apk add python3;\
pip3 install --upgrade pip;\
:;


#USER $SVC_ACCT
WORKDIR /home/$SVC_ACCT/

VOLUME [ "/home/$SVC_ACCT/src" ]

#EXPOSE $PUBLIC_PORT

CMD ["/bin/sh"]
