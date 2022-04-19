FROM python:3.7

ADD requirements.txt requirements.txt

RUN apt-get update
RUN apt-get install -y libxml2 gcc python3-dev libxml2-dev libxslt1-dev zlib1g-dev python3-pip

RUN pip install -r requirements.txt

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh \
    && ln -s /usr/local/bin/entrypoint.sh /

EXPOSE 8000

ENTRYPOINT [ "entrypoint.sh" ]
