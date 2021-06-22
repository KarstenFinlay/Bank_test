FROM ruby:2.7.2

WORKDIR /usr/src

COPY . .

RUN bundle install

ENTRYPOINT [ "rspec" ]