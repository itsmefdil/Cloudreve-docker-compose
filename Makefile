start: mkdir up
stop: down
remove: down delete


# Path: Makefile
mkdir: 
	@echo "Creating directories..."
	@mkdir -vp cloudreve/{uploads,avatar} && touch cloudreve/conf.ini && touch cloudreve/cloudreve.db && mkdir -p aria2/config && mkdir -p data/aria2 && chmod -R 777 data/aria2

# Path: Makefile
up:
	@echo "Starting containers..."
	@docker-compose up -d

# Path: Makefile
down:
	@echo "Stopping containers..."
	@docker-compose down

# Path: Makefile
delete:
	@echo "Removing images..."
	@sudo rm -rf aria2
	@sudo rm -rf cloudreve
	@sudo rm -rf data
