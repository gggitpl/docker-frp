FROM alpine

EVN VERSION=0.21.0 GOOS=linux GOARCH=arm64

RUN wget https://github.com/fatedier/frp/releases/download/v$VERSION/frp_$VERSION_$GOOS_$GOARCH.tar.gz \
&& tar -zxf frp_$VERSION_$GOOS_$GOARCH.tar.gz \
&& mkdir -p /frpc/conf \
&& mv frp_$VERSION_$GOOS_$GOARCH/frpc /frpc/ \
&& mv frp_$VERSION_$GOOS_$GOARCH/frpc*.ini /frpc/conf/ \
&& rm -r frp_$VERSION_$GOOS_$GOARCH*

VOLUME /frpc/conf
EXPOSE 22
WORKDIR /frpc
CMD [./frpc -c ./conf/frpc.ini]
