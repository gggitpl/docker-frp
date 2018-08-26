FROM alpine
ENV VERSION=0.21.0 GOOS=linux GOARCH=arm64
RUN wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION_}${GOOS_}${GOARCH}.tar.gz \
&& tar -zxf frp_${VERSION_}${GOOS_}${GOARCH}.tar.gz \
&& mkdir /frpc_conf \
&& mv frp_${VERSION_}${GOOS_}${GOARCH}/frpc / \
&& mv frp_${VERSION_}${GOOS_}${GOARCH}/frpc.ini /frpc_conf/ \
&& rm -r frp_${VERSION_}${GOOS_}${GOARCH}*
VOLUME /frpc_conf
EXPOSE 22 80
WORKDIR /
ENTRYPOINT ["/fprc","-c","/frpc_conf/frpc.ini"]
