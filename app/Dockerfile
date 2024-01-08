FROM python:3.9

WORKDIR usr/src/app

COPY . .

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

CMD python manage.py flush --no-input & python manage.py migrate





