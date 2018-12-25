FROM alpine
ENV VERSION=0.22.0 GOOS=linux GOARCH=arm
RUN wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& tar -zxf frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& mkdir /frpc \
&& mv frp_${VERSION}_${GOOS}_${GOARCH}/frpc /frpc \
&& rm -r frp_${VERSION}_${GOOS}_${GOARCH}*
WORKDIR /frpc
VOLUME /frpc
ENTRYPOINT ["./frpc","-c","frpc.ini"]