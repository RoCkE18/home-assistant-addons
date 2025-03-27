ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Copiar script de arranque
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
