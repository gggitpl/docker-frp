FROM alpine
ENV VERSION=0.21.0 GOOS=linux GOARCH=arm
RUN wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& tar -zxf frp_${VERSION}_${GOOS}_${GOARCH}.tar.gz \
&& mkdir /frpc_conf \
&& mv frp_${VERSION}_${GOOS}_${GOARCH}/frpc / \
&& mv frp_${VERSION}_${GOOS}_${GOARCH}/frpc.ini /frpc_conf/ \
&& rm -r frp_${VERSION}_${GOOS}_${GOARCH}*
VOLUME /frpc_conf
EXPOSE 22 80
WORKDIR /
ENTRYPOINT ["/frpc","-c","/frpc_conf/frpc.ini"]
