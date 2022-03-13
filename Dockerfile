FROM alpine:3.14

ENV MINIO_ACCESS_KEY=""
ENV MINIO_SECRET_KEY=""

RUN wget https://dl.min.io/server/minio/release/linux-amd64/archive/minio.RELEASE.2019-01-16T21-44-08Z -O /usr/local/bin/minio
RUN chmod +x /usr/local/bin/minio

EXPOSE 9000

CMD ["/usr/local/bin/minio", "gateway", "b2"]
