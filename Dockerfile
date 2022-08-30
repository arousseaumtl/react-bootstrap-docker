FROM alpine

RUN apk update && \
    apk add \
        npm \
        git

RUN addgroup user; adduser user -G user -D
COPY scripts/* /home/user/
RUN mkdir /home/user/app
COPY app/* /home/user/app/
RUN chown -R user:user /home/user && \
    chmod +x /home/user/*.sh

USER user

WORKDIR /home/user/

ENTRYPOINT ["/bin/sh"]
CMD ["entrypoint.sh"]
