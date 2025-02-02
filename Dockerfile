FROM python:3.11.9-bookworm

ENV PYTHONUNBUFFERED=1

WORKDIR /django

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD python manage.py runserver 0.0.0.0:8000
