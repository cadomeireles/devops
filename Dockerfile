FROM python:3.12-slim-bullseye

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY requirements.txt /app
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY . /app

EXPOSE 8000
