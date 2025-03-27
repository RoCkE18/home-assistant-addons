FROM debian:bullseye-slim

ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
