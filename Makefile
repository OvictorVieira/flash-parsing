DCMP = docker-compose
DCMP_UP = ${DCMP} -f ./infra/docker-compose.yml
RAILS = bundle exec rails
RAILS_ENV = development

up:
	${DCMP_UP} up

down:
	${DCMP_UP} down

dbrenew:
	${RAILS} db:drop db:create db:migrate db:test:prepare

install:
	gem install bundler
	bundle install

credentials:
	EDITOR=vim ${RAILS} credentials:edit --environment ${RAILS_ENV}
