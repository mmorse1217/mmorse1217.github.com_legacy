FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    ruby-full
RUN gem install bundler
RUN mkdir /src
WORKDIR /src
RUN apt-get install -y gcc make zlib1g-dev vim
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundler install

CMD ["bash"]
