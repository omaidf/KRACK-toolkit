FROM python:latest
LABEL maintainer "Peter Benjamin <petermbenjamin@gmail.com>"
WORKDIR /src/poc-krack/
COPY krack .
RUN chmod +x krack
ENTRYPOINT ["krack"]
