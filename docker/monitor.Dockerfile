FROM python:2.7-buster

WORKDIR /app

COPY . .
RUN mv docker/Settings.docker.py src/eddn/conf/Settings.py

RUN python setup.py install

CMD ["python", "-u", "src/eddn/Monitor.py"]