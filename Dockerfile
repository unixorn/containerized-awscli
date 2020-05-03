FROM unixorn/debian-py3
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="aws cli tools on debian buster-slim"

# Install AWS tools
RUN pip3 install awscli s3cmd

# Set up entrypoint
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["entrypoint"]

CMD ["bash"]
