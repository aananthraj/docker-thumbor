FROM python:2-alpine
MAINTAINER Aananth k "aananthraj1995@gamil.com"
RUN apk --update add libxml2-dev libxslt-dev libffi-dev gcc musl-dev libgcc openssl-dev curl curl-dev
RUN apk add jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev
RUN pip install thumbor
ENTRYPOINT ["thumbor"]
CMD ["-h"]