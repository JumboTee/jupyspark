FROM python:latest

ENV ADMUSER=amiryus
ENV ADMPASS=jumbo
ENV ROOTPASSWD=jumbo

RUN \
    pip install --upgrade pip && \
    python3 -m pip install pyspark && \
    python3 -m pip install jupyterhub && \
    python3 -m pip install jupyter && \
    apt-get update && \
    apt-get install -y nodejs && \
    apt-get install default-jre -y && \
    curl https://www.npmjs.com/install.sh | sh && \ 
    npm install -g configurable-http-proxy

RUN apt-get install -y openssh-server 

COPY ./jupyterhub_config.py ./
COPY ./docker-entrypoint.sh ./
RUN chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
