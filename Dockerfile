FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9

RUN gem install build_status_server --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["build_status_server"]
CMD ["--help"]
