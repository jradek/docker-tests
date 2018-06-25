IMAGE_NAME=my-python-image

build-image: Dockerfile
	docker build -t ${IMAGE_NAME} .

run-image:
	docker run -it --rm --name my-python-cont -v ${PWD}:/work -p 3000:3000 ${IMAGE_NAME}

.PHONY: run-image build-image
