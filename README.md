# Bevatel backend task

> Bevatel backend task

In this task you should create an app that have two essential models (school / students) each school should have many students and when you delete it should be soft deleted and the record will persist in the database also it should have user model and an api for the students this api should have authentication system to be able to do the crud action for the students.

## Built With

- Ruby on Rails

## Getting Started

### Prerequisites

- Ruby
- Postgres server

### Setup

Clone this repo and enter the directory.

```sh
git@github.com:omar25ahmed/bevatel-backend-task.git && cd bevatel-backend-task
```

### Install

Run the following command to install all the dependencies.

```sh
bundler install
```

### Usage

Run the following command to start the server, then go to http://localhost:3000

```sh
rails db:create # create database
rails db:migrate # migrate tables
rails db:seed # load all data in database from seed.rb

bin/dev # necessary to start the app for the first time
---- or ----
rails s # can be used after starting the app at least once
```

### Run tests

```sh
bundle exec rspec spec
```

## Author

👤 **Omar Ragheb**

- GitHub: [https://github.com/omar25ahmed](https://github.com/omar25ahmed)
- LinkedIn: [https://www.linkedin.com/in/omar-ragheb/](https://www.linkedin.com/in/omar-ragheb/)
- Twitter: [https://twitter.com/Omar25Ahmed](https://twitter.com/Omar25Ahmed)

## Show your support

Give a ⭐️ if you like this project!
