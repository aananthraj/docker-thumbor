FROM python:2-alpine
MAINTAINER Aananth k "aananthraj1995@gamil.com"
RUN apk --update add libxml2-dev \
	libxslt-dev \
	libffi-dev \
	gcc \
	musl-dev \
	libgcc \
	openssl-dev \
	curl \
	curl-dev \
	jpeg-dev \
	zlib-dev \
	freetype-dev \
	lcms2-dev \
	openjpeg-dev \
	tiff-dev \
	tk-dev \
	tcl-dev && \
	pip install thumbor && \
	rm -rf /var/cache/apk/* && \
	rm -rf /root/.cache
ENTRYPOINT ["thumbor"]
CMD ["-h"]
EXPOSE 8888