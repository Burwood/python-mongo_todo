FROM alpine:latest
LABEL maintainer="James Anderton <janderton@burwood.com>"
LABEL description="MongoDB Python Demo App"

COPY ["src/requirements.txt", "."]

RUN apk --update add --no-cache python2 py-pip \
&& pip install -U pip \
&& pip install -r requirements.txt \
&& pip list modules


EXPOSE 5000

WORKDIR /todo
ADD src/ todo

ENTRYPOINT ["python"]
CMD ["app.py"]
