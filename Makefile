BIN=prowler
IMAGE=contino/$(BIN)

build:
	docker build -t $(IMAGE):latest .

deploy: image
	docker push $(IMAGE):latest
