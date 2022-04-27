FROM ruby:2.1
WORKDIR /root

ADD Gemfile /root
ADD Gemfile.lock /root

RUN bundle install --without production

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get install -y --force-yes nodejs
RUN node --version
RUN npm --version

ADD . /root

RUN rake db:create
RUN rake db:migrate