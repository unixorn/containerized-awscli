FROM unixorn/alpython3

LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="aws cli tools in Alpine 3.7"

RUN apk add --no-cache bash

# Install AWS tools
RUN pip install awscli s3cmd

# Set up entrypoint
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["entrypoint"]

CMD ["bash"]
