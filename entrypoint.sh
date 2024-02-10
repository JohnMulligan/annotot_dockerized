#!/bin/bash
mkdir -p /app/db/migrate/
cp -r /migrations/* /app/db/migrate/
RAILS_ENV=$ENV ./bin/rails db:migrate
rm -rf ./tmp/*
./bin/rails server -e $ENV -b $IP
