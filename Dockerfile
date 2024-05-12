FROM ruby:3.3.1

# 必要最低限のツールを入れる
RUN apt-get update -qq && apt-get install -y sqlite3 vim nodejs npm sudo


RUN gem install bundler
RUN gem update bundler

RUN mkdir app

# アプリケーションディレクトリを作業用ディレクトリに設定
WORKDIR /app
ADD . .
EXPOSE 3000
