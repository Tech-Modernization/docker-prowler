FROM alpine

RUN apk add -U py2-pip jq git curl bash && \
    pip2 install awscli ansi2html

RUN adduser -D scriptuser
WORKDIR /home/scriptuser
USER scriptuser
RUN git clone https://github.com/Alfresco/prowler && mkdir /home/scriptuser/.aws
WORKDIR prowler