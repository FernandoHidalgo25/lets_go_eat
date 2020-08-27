module LetsGoEat

  require 'pry'  # binding.pry required for usage
  require 'rest-client'  # this gem was required to be able to GET the data from the API
  require 'json'  # this language gem assisted in translating the data from the API
  # TODO require 'rails-html-sanitizer'  # scrubs html tags from strings in data from API
  require_relative '../lib/api'  # this class contains all of the methods pertaining to the API
  require_relative '../lib/restaurants'  # this class contains all of the methods pertaining to initializing a book and storing them in an array and is the only class which contains true objects
  require_relative '../lib/cli'  # this class, CLI (Command Line Interface), contains all of the methods pertaining to user input and output


  ## APPLICATION STRUCTURE/RUN ORDER
  API.jp_restaurants                     #1. # pulls the book information from google books API
  CLI.list_restaurants                   #2. # lists the books on my bookshelf for user selection using Command Line Interface
  # CLI.choose_a_book              #3. # User selects a book title to receive more information
  # CLI.get_book_details(book) #4. # pulls the details for the book the user selects
  # CLI.user_options               #5. # Search for another book or exit the program or find the mystery

end
