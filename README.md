# Project: Tournaments API

### About
This api provides coaches the information about tournaments coming up, teams that are attending and about the players.

### Endpoints
```
/users
  /create_user ~> To create a new user
  /user_login  ~> To authenticate log in process

/tournaments/
  /index ~> To get the list of all upcoming tournaments
  /:id/teams ~> To get the list of all the teams attending particular tournament.

/teams
  /index ~> to get the list of the teams.
  /:id/players ~> To get the players details of the particular team
```


### Technologies used
Ruby On Rails, PostgreSQL

### Developments
This is project is currently under development. The next steps are to advance the scope of the API's to provide more information and adding more endpoints.

### How to run the app
To locally run this app. Please follow the below steps:
1. Clone this repository.
2. On your terminal please use `git clone (url)`.
3. Once you are inside the repo then run `bundle install`. You also might need to update your bundle package and in that case you can run `bundle update`.
4. Bundle will install all the gems and dependencies from Gemfile. Now you will have to create, migrate, and seed the db. To do so please run `rake db:create`, then `rake db:migrate`, and `rake db:seed`. I like to see the logs, so my go to command is `rake log db:migrate`.
5. That's it now start your server by running `bin/rails server`
