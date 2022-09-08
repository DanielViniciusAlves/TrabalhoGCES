FROM python:3.10.4

WORKDIR /library_back

ENV PYTHONUNBUFFERED = 1

COPY requirements.txt /

RUN pip install -r requirements.txt

WORKDIR /var/www

CMD ["python", "library_back/manage.py", "runserver", "0.0.0.0:8000"]

FROM node:lts-alpine

WORKDIR /../library_front

COPY package.json /

RUN npm install

WORKDIR /app

COPY . /app

CMD ["npm", "start"]
