
FROM python:3.10.4

ENV PYTHONUNBUFFERED = 1

COPY library_back /

RUN pip install -r requirements.txt

WORKDIR /var/www

CMD ["python", "library_back/manage.py", "runserver", "0.0.0.0:8000"]