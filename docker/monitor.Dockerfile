FROM python:2.7-slim-buster

WORKDIR /app

COPY . .

RUN python setup.py install

CMD ["python", "src/eddn/Monitor.py"]