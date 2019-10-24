## Running in docker
### Build image:
docker-compose build
### Run image:
docker-compose up

## Without docker
### Install dependencies
mix deps.get
### Reset db
mix ecto.reset
### Run server
iex -S mix

## View json in browser
### Total responses for a survey:
localhost:8080/responses?survey_id=<SURVEY_ID>
### Total responses for a question:
localhost:8080/responses?survey_id=<SURVEY_ID>&question_id=<QUESTION_ID>

## Getting id's to add to url
### dummy data available in seeds file
### real data
#### open db in psql
psql capture_dev
#### view responses table
select * from responses