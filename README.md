# README

 Very easy to run this application on your system.
 
 First you need to have some prerequisite:
 
 1) Ruby 2.3.0
 2) Postgres Databse
 
 Now you need to run following commands:
 1) git clone https://github.com/shivpatel779/jungle_app.git
 2) cd jungle_app
 3) bundle install: if you getting issues while running this command then manually add those gems.
 5) change the configuration of database.yml as per your database name, password and encoding can be utf8 or unicode.
 6) rake db:create
 7) rake db:migrate
 8) rails s
 
 Graet! App is ready to run on http://localhost:3000/
 
 And to run test cases you need to run following command inside project root folder
 
 1) project root folder > bundle exec rspec
 
 This Application has following features to make it more efficient from others :) 
 1) Ajax Contact Search based on PG search
 2) Friendly Url
 3) Responsiveness
 
 
 

