FROM alpine
ENV ARCH "linux-64"
ENV VERSION "v3.25.1"

ADD https://github.com/v2ray/v2ray-core/releases/download/${VERSION}/v2ray-${ARCH}.zip v2ray.zip
RUN unzip v2ray.zip && mv v2ray-${VERSION}-${ARCH} /usr/bin/v2ray && rm v2ray.zip
ENV PATH /usr/bin/v2ray/:$PATH
CMD ["v2ray", "-h"]
