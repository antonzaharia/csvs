# CSVs - parse and store

[Live Website](https://csvs.fly.dev/ "Live Website")

Ruby on Rails application to show on a web page the content of a CSV file containing a list of books.

# TODO list

- [x] Build a Rails app
- [x] Build a basic authentication system (`email`, `password`)
- [x] For signed in users, build a CSV uploader to S3
- [x] The CSV should have a model with the following attributes:
    - [x] user_id 
    - [x] file
- [x] Book model
    - [x] title
    - [x] author
    - [x] date_published
    - [x] uuid (unique)
    - [x] publisher_name
- [x] Validation of the CSV (book uuid uniqueness)
- [x] Handle the file by renaming (append the UUID) and save the url
- [x] Build index and show pages for the CSV model
- [x] Send a notification to RequestBin with the S3 link
- [x] Test the features

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
