FROM python:2.7
LABEL maintainer="James Anderton <janderton@burwood.com>"
LABEL description="MongoDB Python Demo App"

ADD . /todo
ADD src/ todo

WORKDIR /todo
EXPOSE 5000
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
