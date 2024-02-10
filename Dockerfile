from ruby:2.6.6
RUN gem install bundler -v 2.4.22
RUN apt-get update && apt-get -y install nodejs
COPY . /app 
WORKDIR /app
RUN bundle config set force_ruby_platform true
RUN bundle install
ENV ENV development
ENV IP 0.0.0.0
ENV PORT 8000
VOLUME /app/db
RUN cp -r /app/db/migrate /migrations
ENTRYPOINT /app/entrypoint.sh
