FROM scratch

WORKDIR /src
COPY ./bin/app /src/app
CMD ["./app"]
