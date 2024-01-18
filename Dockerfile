FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y curl tar

WORKDIR /app

RUN curl -LO https://proton.me/download/export-tool/proton-mail-export-cli-linux_x86_64.tar.gz \
    && tar -xzf proton-mail-export-cli-linux_x86_64.tar.gz \
    && rm proton-mail-export-cli-linux_x86_64.tar.gz

ENTRYPOINT ["/app/proton-mail-export-cli"]

CMD ["-e", "/export"]

