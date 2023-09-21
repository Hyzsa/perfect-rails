# perfect-rails
```sh
docker-compose run --no-deps web rails new . --force --database=postgresql
```

```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password
  pool: 5

development:
  <<: *default
  database: myapp_development

test:
  <<: *default
  database: myapp_test
```

```sh
docker compose run web rails db:create
```

```sh
docker compose up -d
```
