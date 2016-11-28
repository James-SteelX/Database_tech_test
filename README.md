# Database server tech test

# Running the program

```
$ git clone https://github.com/James-SteelX/Database_tech_test.git
$ cd Database_tech_test
$ bundle
$ ruby app.rb

Visit http://localhost:4000/ in your preferred browser
```
There are some instructions on how to use the app on the browser page.
To run tests, from the command line ensure you are in the project directory
and run:
```
$ rspec
```

# Brief
For this challenge I was tasked with creating a program that runs off a server and
stored key value pairs passed to it via the URL. On top of that I had to access the value from the URL by passing in the key.

# Approach
I started with a basic Ruby/Sinatra structure while using Rspec and Capybara for
testing purposes.
