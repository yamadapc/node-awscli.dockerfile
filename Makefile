build: FORCE
	docker build -t yamadapc/node-awscli:`git describe --tags`
	docker tag -t yamadapc/node-awscli:`git describe --tags` yamadapc/node-awscli:latest

push: FORCE
	docker push yamadapc/node-awscli:`git describe --tags`
	docker push yamadapc/node-awscli:latest

FORCE:
