.PHONY: $(shell egrep -oh ^[a-zA-Z0-9][a-zA-Z0-9\/_-]+: $(MAKEFILE_LIST) | sed 's/://')

ps:
	docker compose ps
build:
	docker compose build
up:
	docker compose up -d
login:
	docker compose exec web bash
prune:
	docker system prune -f
clean:
	docker compose down --rmi all --volumes --remove-orphans
