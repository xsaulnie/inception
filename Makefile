on:
	docker-compose -f docker-compose.yml up -d --build
off:
	docker-compose stop
	docker system prune 
offf:
	docker-compose stop
	docker system prune
	docker rmi inception_wordpress	
