require 'rainbow'

class CLI
  # this CLI (Command Line Interface) class contains the user input/output methods
  def self.list_restaurants
    puts Rainbow("^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^").blue
    puts Rainbow("                                      ようこそ!                                                 ").blue
    puts Rainbow("vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv").blue
    Restaurants.all.each_with_index do |restaurant, n| # and outputs an indexed list of my bookshelf book titles
      puts "#{n + 1}. #{restaurant.name}"
    end
        # self.choose_a_book # calls the chose_a_book class method from the CLI class
  end
end
