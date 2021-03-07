FROM filebrowser/filebrowser

ENV PORT=8080
ENV USER=admin
ENV PASSWORD=admin
ENV PASSWORD_HASH=
ENV ADDRESS=

RUN rm /.filebrowser.json
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]