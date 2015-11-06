### building and running locally

### Run 
docker-compose -f docker-compose.local.yml run --service-ports web iex -S mix phoenix.server

### Create database
	docker-compose run --rm web sh -c "mix ecto.create"

### Run migration
	docker-compose run --rm web sh -c "mix ecto.migrate"
