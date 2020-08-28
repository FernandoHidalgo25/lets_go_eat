class CLI
require 'rainbow'
require_relative './animations.rb'
extend Animations
  # this CLI (Command Line Interface) class contains the user input/output methods
  def self.list_restaurants
    puts Rainbow("╔═════════════════════════════════════════════════════════════════════════════════════════════╗").blue
    puts Rainbow("║                                      ようこそ!                                              ║").blue
    puts Rainbow("╚═════════════════════════════════════════════════════════════════════════════════════════════╝").blue
    Restaurants.all.each_with_index do |restaurant, n| # and outputs an indexed list of my restaurantshelf restaurant titles
      puts Rainbow("#{n + 1}. #{restaurant.name}").green
    end
        self.choose_a_restaurant # calls the chose_a_restaurant class method from the CLI class
  end
  # this class method requests the user input a number to select a restaurant title in order to
 def self.choose_a_restaurant # see more details about the restaurants on the restaurantshelf
    puts Rainbow("╔═════════════════════════════════════════════════════════════════════════════════════════════╗").magenta  #, :background => :green) # line for spacing aesthetics
    puts Rainbow("║               About which restaurant would you like information?                            ║").magenta
    puts Rainbow("║                                                                                             ║").magenta
    puts Rainbow("║       Please select a restaurant by typing the corresponding number followed by ENTER.      ║").magenta
    puts Rainbow("╚═════════════════════════════════════════════════════════════════════════════════════════════╝").magenta #, :background => :green) # line for spacing aesthetics
   input = gets.chomp.to_i - 1 # user input is requested and the user input is turned into an integer for indexing purposes
   if input < 0 || input > 9 # user input is outside of the range of the index of my restaurantshelf, it tells the user they made the wrong selection
     self.wrong_selection
   end
     restaurant = Restaurants.all[input] # the variable restaurant is becoming the instance which was selected by the user
     @@restaurant = restaurant
     self.get_restaurant_details(self.restaurant)
 end

 def self.restaurant
   @@restaurant
 end
 def self.get_restaurant_details(restaurant)
   raining(1, 1)
   puts ""
   puts Rainbow("≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡ 🍙🍱🍚🍣 #{restaurant.name} 🍜🍛🍥🍘 ≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡").purple #, :background => :blue)
   puts Rainbow("Name: #{restaurant.name}""                                                       ─▄───────▄█▄───────▄─").gold
   puts Rainbow("Address: #{restaurant.formatted_address}"" ▐█▌──▄──█████──▄──▐█▌").gold
   puts Rainbow("Opening Hours: #{restaurant.opening_hours}                                  ""─█──███▄▄███▄▄███──█─").gold
   puts Rainbow("Rating: #{restaurant.rating}                                                        ""░█░░█▄█▄█▀▒▀█▄█▄█░░█░").gold
   puts Rainbow("User Ratings Total: #{restaurant.user_ratings_total}                                            ""██▄▄█▄█▄█▒▒▒█▄█▄█▄▄██").gold
   self.user_options
 end
 def self.user_options
   raining(1, 1)
    puts Rainbow("╔═════════════════════════════════════════════════════════════════════════════════════════════╗").magenta  #, :background => :green) # line for spacing aesthetics
    puts Rainbow("║   Please type 'exit' followed by ENTER if you would like to exit the restaurant program     ║").magenta
    puts Rainbow("║                                                                                             ║").magenta
    puts Rainbow("║   Otherwise, you may type 'next' followed by ENTER to choose a restaurant from the list     ║").magenta
    puts Rainbow("╚═════════════════════════════════════════════════════════════════════════════════════════════╝").magenta
   input = gets.chomp
   if input == "exit"
     self.leave_restaurant_shelf
   elsif input == "next"
     self.list_restaurants
  #  end  # lists the restaurants on my restaurantshelf for user selection using Command Line Interface
   elsif input == "kitchen"
     self.mystery
     self.user_options
   else
     self.wrong_selection
   end
 end
 def self.leave_restaurant_shelf
   raining(6, 0.75)
   puts " "
   puts Rainbow("                     Thank you for coming to my favorite japanese restaurants!").green
   puts " "
   raining(6, 0.75)
   exit
 end
 def self.mystery
   # should be triggered by pressing 4-10 when prompted to input 2 or 11 for exit or choose again
   kitchen(3, 1)
   puts Rainbow("        0:  Why are you in the kitchen?! :O").red
   raining(4, 1)
   puts Rainbow("       You better get out of here! ").red
   raining(4, 1)
   puts Rainbow(          "Go back to looking for japanese restaurants!").red
 end
 def self.wrong_selection
   # if input = 11..# anything not 2 or 3 - and above 10 and symbols and letters etc
    #  raining(2, 0.75)
     puts " "
     puts Rainbow("                      you made an invalid selection, sorry try again                 ").blue
     puts " "
     self.user_options
 end
end
