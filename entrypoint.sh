#!/bin/sh

# 스크립트 실행 중 오류 발생 시 중단
set -e

echo "Running makemigrations..."
python manage.py makemigrations

echo "Applying database migrations..."
python manage.py migrate

echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Starting Django server on 0.0.0.0:8000..."
python manage.py runserver 0.0.0.0:8000
