# CSVs - parse and store

Ruby on Rails application to show on a web page the content of a CSV file containing a list of books.

# TODO list

- [x] Build a Rails app
- [x] Build a basic authentication system (`email`, `password`)
- [ ] For signed in users, build a CSV uploader to S3
- [ ] The CSV should have a model with the following attributes:
    - [ ] user_id 
    - [ ] book_title
    - [ ] book_author
    - [ ] date_published
    - [ ] uuid (unique)
    - [ ] publisher_name
    - [ ] s3_url
- [ ] Validation of the CSV (uuid uniqueness)
- [ ] Handle the file by renaming (append the UUID) and save the url
- [ ] Build index and show pages for the CSV model

## Ruby version

* 3.1.2

## Running the app locally

1. Fork and clone this repository

2. Install the dependencies by running `bundle install`

3. Setup the database (Postgres) `rails db:setup`

3. Run the migrations `rails db:migrate`

4. Start the server by running `bin/dev`

5. Visit `localhost:3000`

## How to run the test suite

* Run `rspec`
