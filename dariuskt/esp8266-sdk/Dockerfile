FROM dariuskt/debian-jessie


ADD build /build
RUN bash /build/build.sh && rm -Rf /build


USER user
WORKDIR /home/user
ENV TERM xterm
CMD bash -l

