FROM python:3-alpine
LABEL org.opencontainers.image.source github.com/akpw/mktxp
WORKDIR /mktxp
COPY . .
RUN pip install ./ && apk add nano 
COPY test.conf /root/mktxp/mktxp.conf
COPY test.sh /app/
RUN chmod 755 /app/*
EXPOSE 49090
ENTRYPOINT ["/app/test.sh"]