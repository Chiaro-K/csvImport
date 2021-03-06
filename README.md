# Project

This project is an application that allows a user to upload a csv document into a database and then display the result onto the web page.

## Install

### Clone the repository

```shell
git clone https://github.com/Chiaro-K/csvImport.git
cd project
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
bundle install
```
### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
rails s
```
