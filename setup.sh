#!/bin/bash

# apt（Macで言うところのbrew）の更新
sudo apt update -y

# 環境構築に必要なパッケージのインストール
sudo apt install -y build-essential libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev

# rbenvのセットアップ
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH=$HOME/.rbenv/bin:$PATH' >> ~/.bashrc
export PATH=$HOME/.rbenv/bin:$PATH
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
eval "$(rbenv init -)"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# rubyのインストール
rbenv install 2.7.2
rbenv global 2.7.2

# nodeのセットアップ
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
echo 'export PATH=$HOME/.nodenv/bin:$PATH' >> ~/.bashrc
export PATH=$HOME/.nodenv/bin:$PATH
echo 'eval "$(nodenv init -)"' >> ~/.bashrc
eval "$(nodenv init -)"
git clone https://github.com/nodenv/node-build.git $(nodenv root)/plugins/node-build

# nodeのインストール
nodenv install 12.14.0
nodenv global 12.14.0

# railsのセットアップ
bundle
rbenv rehash
rails db:create
rails db:migrate
rails db:seed
