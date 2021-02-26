### Table of contents
* [General info](#general-info)
* [Features](#features)
* [Status](#status)
* [Setup](#setup)

### General info
> Living in a global pandemic and gyms being regularly closed makes it harder to build and maintain a fitness routine. Especially people who like to train with weights are lacking the ressources to continue their training outside of a gym. That's where HoodGym comes into play. On stations around the city people can flexibly rent sports equipment (e.g. dumbbells, weights) via our [Website HoodGym](https://hoodgym-alpha.herokuapp.com/), pay per minute and train. We give people the opportunity to do weight training outdoors outside of a gym.

### Features
* Stations overview (Where I can train/ Map integrated)
* Detailled station (How's the station equipped and how to get there)
* Purchase Packages and Payment
* Booking system
* Booking history
* Report an issue at a station
* Track your training
* Training instructions

### Status
Project is: _in progress_

### Setup
The setup steps expect following tools installed on the system.

- Github
- Ruby
- Rails

#### Clone the repository

```shell
git clone git@github.com:ramonamaltan/hoodgym.git
cd hoodgym
```

#### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

#### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

#### Initialize the database

```shell
rails db:create db:migrate db:seed
```

#### Start Rails server

```shell
rails s
```

And now you can visit the site with the URL http://localhost:3000
