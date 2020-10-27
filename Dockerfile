ARG CIMG_NODE_VERSION

FROM cimg/node:$CIMG_NODE_VERSION
ARG BUILD_DATE
ARG CIMG_NODE_VERSION
ARG CYPRESS_VERSION
ARG VCS_REF
MAINTAINER The Spry Group, LLC. <support@spry-group.com>

# Metadata
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name='sprygroup/cimg-node' \
      org.label-schema.description='CircleCI Node Image with cypress' \
      org.label-schema.vcs-url="https://github.com/spry-group/docker-cimg-node" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vendor="The Spry Group, LLC." \
      org.label-schema.version=$CIMG_NODE_VERSION-$CYPRESS_VERSION \
      org.label-schema.schema-version="1.0.0rc1"

# npm install doesn't seem to maintain root permissions. this grants access to those...
RUN npm install --no-save cypress@$CYPRESS_VERSION