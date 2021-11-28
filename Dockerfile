FROM alpine:latest

RUN apk add --no-cache bash \
	gcc \
	musl-dev \
	gdb \
	make \
	valgrind \
	py3-pip && \
	pip install --no-cache-dir norminette

