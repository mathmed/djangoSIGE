#!/bin/bash
cd /home/app
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
