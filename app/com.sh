#!/bin/sh

gunicorn stocks_products.wsgi:application --bind 0.0.0.0:8000  

echo "gunicorn run"

python3 manage.py makemigrations logistic
echo "makemigrations run"

python3 manage.py migrate  
echo "migrate run"

python3 manage.py collectstatic