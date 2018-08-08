FROM rails:onbuild
COPY . /usr/src/app
RUN bundle install
RUN bundle exec rails yarn:install
RUN bundle exec rake assets:precompile
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
