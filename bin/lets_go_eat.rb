module LetsGoEat

  require 'pry'  # binding.pry required for usage
  require 'rest-client'  # this gem was required to be able to GET the data from the API
  require 'json'  # this language gem assisted in translating the data from the API
  require_relative '../lib/api'  # this class contains all of the methods pertaining to the API
  require_relative '../lib/restaurants'  # this class contains all of the methods pertaining to initializing a book and storing them in an array and is the only class which contains true objects
  require_relative '../lib/cli'  # this class, CLI (Command Line Interface), contains all of the methods pertaining to user input and output


  API.jp_restaurants                    
  CLI.list_restaurants               


end
