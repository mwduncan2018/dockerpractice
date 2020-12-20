# Development Stage
FROM docker.io/python:3.8.6 AS developmentstage
COPY sourcecode /src
COPY textfiles /tempfiles

# Production Stage
FROM docker.io/python:3.8.6
LABEL maintainer="mduncan2600@gmail.com"
LABEL version="1.0"
COPY --from=developmentstage /src /src
WORKDIR /src
ENTRYPOINT ["python3", "main.py"]
