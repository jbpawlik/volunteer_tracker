# __Free Enterprise__

### by [James Benjamin Pawlik](http://github.com/jbpawlik)

### __Description__
Free Enterprise is a site that allows non-profits to manage their volunteers. A user can view, add, update, and delete both projects and volunteers, as well as assign volunteers to projects.


### __Technologies Used__
Volunteer Tracker was written in Ruby. Routing was handled by Sinatra. Debugging was handled by the Pry gem. Testing was done with the RSpec, Capybara, and Simplecov gems. A custom Ruby script created the project directory and files. Page content is written as embedded Ruby/HTML, with styling from CSS. The project is deployed on Heroku.

### __Setup/Installation__
Setup for this project assumes that you have Ruby installed on your personal computer. Ruby can be downloaded [here](https://www.ruby-lang.org/en/downloads/)
1. Download or clone the [repository](http://github.com/jbpawlik/volunteer_tracker) to your local machine
2. Navigate to the top level of the directory
3. Open your terminal in this directory
4. To start the site, type "ruby app.rb". The site should open in your browser; if it does not, type localhost:4567 into your browser's address bar (if necessary, check the localhost path by reading the Sinatra log displayed in the terminal after 'ruby app.rb')
5. To check the specifications, type "rspec" without quotes. RSpec will run the logic specifications, then Capybara will run the integration specs. Testing logs are available in ./coverage.
6. When finished viewing the site, disconnect from Sinatra by navigating to the terminal window and typing ctrl-C

Alternately, visit the site at [Heroku](https://volunteertracker.herokuapp.com)

### __Known Bugs / Future Goals__
No bugs have been found or reported. Please contact the author if you experience poor performance.

Future goals for __Word Nerds__:
1. Log volunteer hours worked
2. Show volunteer profile
3. Alert user if volunteer hours overlap

### __License__
This software is licensed under the [BSD license](license.txt).

[![License](https://img.shields.io/badge/License-BSD%202--Clause-orange.svg)](https://opensource.org/licenses/BSD-2-Clause)

Copyright (c) 2021 James Benjamin Pawlik

### __Contact Information__
Contact the author at __james.benjamin.pawlik@gmail.com__
