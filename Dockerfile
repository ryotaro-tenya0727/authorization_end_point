FROM ruby:3.3.0
RUN apt-get update
RUN apt-get install -y build-essential
WORKDIR /authorization_end_point
COPY Gemfile /authorization_end_point/
RUN bundle install
EXPOSE 3003
ENTRYPOINT rm -f /authorization_end_point/tmp/pids/server.pid && bundle exec rails s -p 3003 -b '0.0.0.0'
