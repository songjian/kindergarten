FROM ruby:2.4

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && echo "deb http://mirrors.163.com/debian/ stretch main non-free contrib" >/etc/apt/sources.list \
    && echo "deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.163.com/debian/ stretch main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib" >>/etc/apt/sources.list \
    && echo "deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib" >>/etc/apt/sources.list

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y --no-install-recommends \
        nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
RUN npm i
RUN bundle exec rake assets:precompile

VOLUME ["/usr/src/app/public/", "/usr/src/app/docker-conf/"]

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
