#
# ps3netsvr Dockerfile
#
# https://github.com/shawly/docker-ps3netsvr
#

# Pull base image.
FROM jlesage/baseimage:alpine-3.6

# Define working directory.
WORKDIR /tmp

# Install PS3NetSvr.
ADD ps3netsvr-builder/ps3netsvr.tar.gz /

# Add files.
COPY rootfs/ /

# Set environment variables.
ENV APP_NAME="PS3NetSvr"
    TAKE_CONFIG_OWNERSHIP="0"

# Define mountable directories.
VOLUME ["/games"]

# Expose ports.
EXPORT 38008

# Metadata.
LABEL \
      org.label-schema.name="ps3netsvr" \
      org.label-schema.description="Docker container for PS3NetSvr" \
      org.label-schema.version="unknown" \
      org.label-schema.vcs-url="https://github.com/shawly/docker-ps3netsvr" \
      org.label-schema.schema-version="1.0"