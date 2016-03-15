docker-compose run tock python manage.py migrate --settings=tock.settings.dev --noinput
docker-compose run tock python manage.py collectstatic --settings=tock.settings.dev --noinput
docker-compose run db psql -h db -U tock -c 'CREATE DATABASE "tock-test"'
