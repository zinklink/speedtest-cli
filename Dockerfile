FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update
RUN apt-get install -y curl
RUN curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install speedtest 
COPY test.sh .
CMD ["bash", "/app/test.sh"]
