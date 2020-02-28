FROM debian:buster-slim
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="aws cli tools on debian buster-slim"

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y --no-install-recommends python3-pip && \
		rm -fr /tmp/* /var/lib/apt/lists/*

# Install AWS tools
RUN pip3 install setuptools wheel && \
    pip3 install awscli s3cmd

# Set up entrypoint
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["entrypoint"]

CMD ["bash"]
