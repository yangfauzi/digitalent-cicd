install:
	@go install
test:
	@go test -v
run:
	@go run main.go
build:
	@go build -o digitalent-make
	@./digitalent-make