FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /aplicacao
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./

RUN bundle install


EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]