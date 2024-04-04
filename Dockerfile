FROM python:3.8-alpine

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

ENV REDIS_HOST=172.17.0.2

ENTRYPOINT ["python", "-m", "flask", "run", "--host=0.0.0.0"]
