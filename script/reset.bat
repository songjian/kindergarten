docker-compose down
docker-compose run app rake db:reset
docker-compose up