all: build up

build:
	docker-compose build

up:
	docker-compose down -v
	docker-compose up -d

cli:
	docker-compose exec app bash

angular-build:
	docker-compose exec app ng build

angular-start:
	docker-compose exec app ng serve --host 0.0.0.0

