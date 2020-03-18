FROM alpine:latest
FROM ubuntu:latest
MAINTAINER Juan Pardinas "jpardinas23@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["qa/app.py"]