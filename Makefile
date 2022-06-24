on:
	mkdir -p /home/xsaulnie/data/website
	mkdir -p /home/xsaulnie/data/database
	docker-compose -f docker-compose.yml up -d --build
off:
	docker-compose stop
	docker system prune 
offf:
	docker-compose stop
	docker system prune
	docker rmi inception_wordpress
rm:
	sudo docker volume rm inception_database
	sudo docker volume rm inception_website
	sudo rm -Rf /home/xsaulnie/data/website
	sudo rm -Rf /home/xsaulnie/data/database
rmi:
	sudo docker rmi inception_mysql
	sudo docker rmi inception_wordpress
	sudo docker rmi inception_nginx
	sudo docker volume rm inception_database
	sudo docker volume rm inception_website
	sudo rm -Rf /home/xsaulnie/data/website
	sudo rm -Rf /home/xsaulnie/data/database
