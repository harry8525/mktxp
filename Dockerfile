FROM python:3-alpine
LABEL org.opencontainers.image.source github.com/akpw/mktxp
WORKDIR /mktxp
COPY . .
RUN pip install ./ && apk add nano 
COPY test.conf /root/mktxp/mktxp.conf
EXPOSE 49090
ENTRYPOINT ["/usr/local/bin/mktxp"]
CMD ["print", "-en 'Main-Router' -dc"]
