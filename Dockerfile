FROM alpine
ENV VERSION=0.22.0 GOOS=linux GOARCH=arm
RUN wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& tar -zxf frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& mkdir /frp \
&& mv frp_${VERSION}_${GOOS}_${GOARCH}/frpc /frp \
&& rm -r frp_${VERSION}_${GOOS}_${GOARCH}*
WORKDIR /frp
VOLUME /frp
ENTRYPOINT ["./frpc","-c","frpc.ini"]