FROM alpine

RUN apk update && \
    apk add npm

RUN addgroup app; adduser app -G app -D
COPY scripts/* /home/app/
RUN mkdir /home/app/app
COPY app/* /home/app/app/
RUN chown -R app:app /home/app && \
    chmod +x /home/app/*.sh

USER app

WORKDIR /home/app/

ENTRYPOINT ["/bin/sh"]
CMD ["entrypoint.sh"]
