FROM alpine:latest

RUN apk add -U tzdata bash curl py3-pip
ENV TZ=Europe/Bucharest

WORKDIR /home/app

ADD files/crontab /var/spool/cron/crontabs/root
RUN chmod 0600 /var/spool/cron/crontabs/root

COPY files/*.sh /home/app/
RUN chmod +x /home/app/*.sh
RUN pip install yeecli

CMD crond -l 2 -f
