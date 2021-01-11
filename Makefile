
up:
	docker-compose up -d
	make logs

logs:
	docker-compose logs --follow

down:
	docker-compose down
