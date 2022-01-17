# very-academy-django-pg-docker-study
docker-compose build
docker-compose run django django-admin startproject core .
docker-compose up
docker-compose run django python manage.py migrate
docker exec -it pgdb psql -U postgres