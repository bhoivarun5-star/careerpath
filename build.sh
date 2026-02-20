#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python studentsystem/manage.py collectstatic --no-input
python studentsystem/manage.py migrate
