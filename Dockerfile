FROM manuc66/node-hp-scan-to:latest

RUN apk update \
    && apk add 'jq=1.6-r2' \
    && apk add 'bash=5.2.15-r0'

RUN mkdir /entry

WORKDIR /entry

COPY run.sh run.sh
COPY options.sh options.sh

ENTRYPOINT [ "/init" ]
CMD ["/entry/options.sh"]
