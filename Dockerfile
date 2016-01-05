FROM alpine:3.2

RUN apk add --update perl git curl build-base linux-headers \
 && cd /tmp                    \
 && curl -O http://rakudo.org/downloads/rakudo/rakudo-2015.12.tar.gz \
 && tar xzf rakudo-2015.12.tar.gz \
 && cd rakudo-2015.12/ \
 && perl Configure.pl --backend=moar --gen-moar --gen-nqp \
 && make
