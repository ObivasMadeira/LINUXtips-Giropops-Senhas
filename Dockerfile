FROM debian:10 as buildando
LABEL description="Giropops-Senhas"
RUN apt-get update && apt-get install -y python3-pip && apt-get clean
WORKDIR /app
COPY . ./
RUN /usr/bin/pip3 install --no-cache-dir -r requirements.txt
CMD ["flask", "run", "--host=0.0.0.0"]

