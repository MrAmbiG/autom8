FROM alpine:latest
RUN mkdir /root/input /root/output
ADD input /root/input
ADD hello.sh /root/
RUN apk add bash jq curl
RUN dos2unix /root/hello.sh
ENTRYPOINT ["/root/hello.sh"]
