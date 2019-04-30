help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	## Application
	@echo ""
	@echo "  docker-build	 		Generate all documentations"
	@echo "  docker-start"

docker-build:
	@docker build -f ./build/dev/Dockerfile -t website .

docker-start:
	@docker run -it -p 8080:8080 --rm --name website website
