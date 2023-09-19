FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y postgresql-client
WORKDIR /myapp

# install nodejs(LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs

# install yarn
RUN npm install --global yarn

# gem
COPY src/Gemfile /myapp/Gemfile
COPY src/Gemfile.lock /myapp/Gemfile.lock
# 以下エラーが発生するため必要
# ERROR: It looks like you're trying to use Nokogiri as a precompiled native gem on a system with glibc < 2.17:
RUN bundle config force_ruby_platform true
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
