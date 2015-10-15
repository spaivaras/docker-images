FROM debian:jessie

ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive



ADD build /build
RUN bash /build/build.sh && rm -Rf /build

