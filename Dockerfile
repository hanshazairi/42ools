FROM alpine:latest

RUN apk add --no-cache bash && \
	apk add --no-cache gcc && \
	apk add --no-cache musl-dev && \
	apk add --no-cache gdb && \
	apk add --no-cache make && \
	apk add --no-cache valgrind && \
	apk add --no-cache py3-pip && \
	pip install --no-cache-dir norminette

