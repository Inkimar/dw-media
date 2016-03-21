ME=$(USER)
all: build init up

clean: stop rm
	sudo chown -R $(ME):$(ME) nginx-conf nginx-html nginx-certs nginx-logs
	sudo chown -R $(ME):$(ME) mysql_nf-datadir mysql_nf-shr mysql_nf-autoload mysql_nf-conf.d

init:
	echo "Retrieving the database for the mediaserver"
	./get_db_data.sh
	echo "set up database nf_media"
	docker-compose up -d db.media
	
	echo "Installing app file (.war)"
	./get_war.sh
	echo "Installing image files"
	#./get_fs_data.sh

	echo "Installing nginx certs and DINA favicon"
	./get_nginx_certs.sh
	
build:
	docker-compose build --no-cache app

up:
	docker-compose up -d

	echo "Please make sure you have naturforskaren.dina-web.net in your /etc/hosts!"
	sleep 5
	
	echo "Opening app!"
	firefox http://naturforskaren.dina-web.net/MediaServerResteasy/&

stop:
	docker-compose stop

rm:
	docker-compose rm -vf

