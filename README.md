# marvel-hero-info

![](marvel-hero-info.gif)

## About this project
 
Marvel Hero Info, is a WEB application that consumes API data from [MARVEL](https://developer.marvel.com/), in this case, hero data. The application presents all the heroes made available by the API on a homepage, and when you click on the hero's photo or name, you are redirected to a page with more details about the hero. In addition, it is possible to search the name of the desired hero using a search bar.

I will be very happy if you can provide me with any feedback on the project, code, structure or anything you can report that can make me a better developer!

Send me an email: g2_ribeiro@hotmail.com

Connect with me on [LinkedIn](https://www.linkedin.com/in/gustavo-ribeiro-488b4a17a/)

## System dependencies

To execute this project you will need:
    
  1. Ruby on Rails and its dependencies(Ruby, SQLite3, Node.js e Yarn)
  2. PostgreSQL 

## Configuration

In __config/database.yml__ you must define your database user, password and port, as follows:
```
development:
  <<: *default
  host: localhost
  database: marvel_heroes_info_development
  username: seu_username
  password: sua_senha
  port: a_porta_do_banco_de_dados
```
```
test:
  <<: *default
  database: marvel_heroes_info_test
  username: seu_username
  password: sua_senha
```

## Create the database

To create the database just run `rake db:create` on your terminal.

## Initialize the Database

The database is initialized in two steps:

  1. Perform the database migration with the command `rake db:migrate`
  2. Use the command `rake db:seed` to populate the database

## How to run the test suite

To run the test suite just use the command `rspec`

## How to run the project

NOTE: To execute the project, you must have made all the settings indicated and have created and initialized the database.

To run the project, follow these steps:

  1. Install the dependencies with the command `bundle install`
  2. Start the server with the command `rails server`
  3. Open the browser of your choice and access the address __localhost:3000__
