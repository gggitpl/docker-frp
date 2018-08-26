FROM alpine
ENV VERSION=0.21.0 GOOS=linux GOARCH=amd64
RUN wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& tar -zxf frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& mkdir /frps_conf \
&& mv frp_${VERSION}_${GOOS}_${GOARCH}/frps / \
&& mv frp_${VERSION}_${GOOS}_${GOARCH}/frps.ini /frps_conf/ \
&& rm -r frp_${VERSION}_${GOOS}_${GOARCH}*
WORKDIR /
EXPOSE 80 443 6000 7000 7500
ENTRYPOINT ["/frps","-c","/frps_conf/frps.ini"]
