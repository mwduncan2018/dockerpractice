FROM docker.io/python:3.8.6

LABEL maintainer="mduncan2600@gmail.com"
LABEL version="1.0"

COPY sourcecode /src

WORKDIR /src

EXPOSE 8080

ENTRYPOINT ["python3", "main.py"]
