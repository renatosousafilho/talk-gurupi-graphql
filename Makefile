kill:
	@docker-compose down
build:
	@docker-compose build
run:
	@docker-compose up app
mysql:
	@docker exec -i mysql_db mysql -proot -v -e "${EXEC}"
reset:
	@docker-compose run --rm app bundle exec rake db:drop db:create db:migrate
seed:
	@docker-compose run --rm app bundle exec rake db:seed
console:
	@docker-compose run --rm app rails c
rspec:
	@docker-compose run --rm app rspec $(ARGS)