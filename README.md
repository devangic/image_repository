# README

* Ruby version - 2.7.1

* System dependencies - PostgreSQL Database, ImageRick for Image Processing used by ActiveStorage

* Configuration
- Update the database.yml file with the local PostgreSQL credentials of your system

* Database creation
- Run 
	rails db:create
	rails db:migrate

* Start the server
- rails server

* Open any browser and visit
- http://localhost:3000

* You can play with the SignUp and SignIn functionality
* A registered user can login and upload single or multiple images
* Logged in user can see all the public images of different users
* Logged in user can make the self uploaded image private, which stops other users from viewing those images
* Logged in users can see their own uploaded images
* Logged in users can delete single or multiple selected images

* Here is the demo application
https://image-repository-dv.herokuapp.com/