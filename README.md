### building and running locally
	
### building and running in heroku

### Create database
	docker-compose run --rm web sh -c "mix ecto.create"

### Run migration
	docker-compose run --rm web sh -c "mix ecto.migrate"
