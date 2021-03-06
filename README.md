# Animal_Shelter_API

#### Greg Khmara

#### This is an API that keeps track of shelter animals. They are listed by name, age, breed.

## Technologies Used

* Ruby
* Rails
* HTML
* Rspec
* SQL
* Capybara
* Faker
* Shoulda-Matchers

## Description

This script allows the user to access an API that stores info about shelter animals. The API can be added to and animals can be deleted.

## Setup/Installation Requirements

* Clone the repo from Github
* Navagate to root project folder *specialty_food_prodcuts* within the terminal or console
* type to terminal or console:<br>*rake db:create*<br>*rake db:migrate*<br>*rake db:test:prepare*
* If you would like to seed the database with information type:<br>*rake db:seed*
* To install Gems type:<br>*bundle install*
* Type the command *postgres* to start server
* Create a new tab in the terminal or console and type the command *rails s*
* Open a web browser and navigate to *localhost:3000*

## Endpoints

 | Usage | Method | URL | Parameters |
 | :---:| :---: | :---: | :---: |
 | See all items | GET | `localhost:3000/animals` | |
 | See 5 addtional items | GET | `localhost:3000/animals?page=2` | :page |
 | Find an item by ID | GET | `localhost:3000/animals/:id` | :id |
 | Add an item | POST | `localhost:3000/animals` | :name, :age, :breed |
 | Update an item | PUT | `localhost:3000/animals/:id` | :name, :age, :breed |
 | Delete an item | DELETE | `localhost:3000/animals` | :id |

## Known Bugs

* No known bugs.

## License

MIT License

Copyright (c) 06-02-22 Greg Khmara

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.