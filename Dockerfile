FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV GUNICORN_PORT=7755
ENV FLASK_APP=core/server.py

EXPOSE ${GUNICORN_PORT}

CMD ["/bin/bash", "run.sh"]
