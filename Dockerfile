FROM alpine:3.8
RUN apk --no-cache add dnsmasq
EXPOSE 53 53/udp
CMD ["dnsmasq", "-k", "-u", "root", "-8", "/dev/stdout"]
