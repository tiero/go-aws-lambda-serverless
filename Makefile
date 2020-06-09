.PHONY: build clean deploy-dev deploy-prod

build: 
	export GO111MODULE=on
	env GOOS=linux go build -ldflags="-s -w" -o bin/hello hello/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/world world/main.go

clean: 
	rm -rf ./bin ./vendor Gopkg.lock

deploy-dev: clean build
	sls deploy --verbose --stage dev --region eu-west-1

deploy-prod: clean build
	sls deploy --verbose --stage production --region eu-west-1

