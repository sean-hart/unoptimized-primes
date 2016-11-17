FROM  shart/amazonlinux-ruby:2.2

WORKDIR /usr/src/
COPY . /usr/src/

RUN bundle install

EXPOSE 4567
CMD ruby app.rb
