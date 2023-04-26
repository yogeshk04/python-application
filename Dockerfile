# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y gcc python3-dev
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD [ "flask", "run" ]