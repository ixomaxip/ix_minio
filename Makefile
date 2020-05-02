include .env

rt:
	time docker-compose build $@
push pull down logs ps restart:
	docker-compose $@
log:
	docker-compose logs -f rt

R=docker-compose run --rm
run-rt:
	$R rt
run-ci:
	$R ci
run-sh:
	docker-compose run --rm ci bash
up:
	docker-compose up -d rt

ID=`docker-compose ps -q`
sh:
	docker exec -it $(ID) sh
