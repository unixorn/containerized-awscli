FROM alpine:3.8

LABEL description="aws cli tools in Alpine 3.7"

# RUN apk add --no-cache bash

# Set up pip
RUN apk add py2-pip

# Get pip updated to current
RUN pip install --upgrade pip

# Install AWS tools
RUN pip install awscli s3cmd

# Set up entrypoint
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["entrypoint"]

CMD ["bash"]
