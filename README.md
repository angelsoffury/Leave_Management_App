
# Leave_Management_App

The App helps to manage applying leaves & its approvals within a company.

There are two types of users:
  * Employees
  * Manager
Each of the users have their own Dashboads which list all the leaves applied with its status.

To apply a leave , first a user has to Sign Up. Then request the admin to assign a manager to you. Once it is done you can apply for a leave.

#TECHNICAL SPECIFICATIONS

##Back-end
  * Rails 4.0.8
  * sqlite3 1.3.8
  * rspec-rails 2.13.1
  * capybara 2.1.0
  * factory_girl_rails 4.2.0
  * faker
  * pry

##Front-end
  * Bootstrap 2.3.3.5

#HOW TO RUN THE APP

 1. Do a http git clone
 ...
 $ https://github.com/angelsoffury/Leave_Management_App.git
 ...

 2. Choose the Leave_Management_App directory

 3. Run all the migrations
 ...
 $ bundle exec rake db:migrate
 ...

 4. Start your local rails server
 ...
 $ rails serevr
 ...

 5. Find your application in http://localhost:3000/ (by default)



