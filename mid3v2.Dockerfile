# helper tool for mp3 tags
# to run:
# docker run --rm -v "`pwd`":/input mid3v2 file.mp3

FROM python:3.8-alpine3.11

RUN pip install mutagen

WORKDIR /input

ENTRYPOINT [ "/usr/local/bin/mid3v2" ]

