require 'rainbow'

class CLI
  # this CLI (Command Line Interface) class contains the user input/output methods
  def self.list_restaurants
    puts Rainbow("^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^").blue
    puts Rainbow("                                      ようこそ!                                                 ").blue
    puts Rainbow("vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv").blue
    Restaurants.all.each_with_index do |restaurant, n| # and outputs an indexed list of my restaurantshelf restaurant titles
      puts "#{n + 1}. #{restaurant.name}"
    end
        self.choose_a_restaurant # calls the chose_a_restaurant class method from the CLI class
  end

  # this class method requests the user input a number to select a restaurant title in order to
 def self.choose_a_restaurant # see more details about the restaurants on the restaurantshelf
   puts Rainbow("^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^     ^^^^^").magenta  #, :background => :green) # line for spacing aesthetics
   puts Rainbow("About which restaurant would you like information?").magenta
   puts " "
   puts Rainbow("Please select a restaurant by typing the corresponding number followed by ENTER.").magenta
   puts Rainbow("vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv     vvvvv").magenta #, :background => :green) # line for spacing aesthetics

   input = gets.chomp.to_i - 1 # user input is requested and the user input is turned into an integer for indexing purposes
   if input < 0 || input > 9 # user input is outside of the range of the index of my restaurantshelf, it tells the user they made the wrong selection
     self.wrong_selection
   end
     restaurant = restaurants.all[input] # the variable restaurant is becoming the instance which was selected by the user
     @@restaurant = restaurant
     self.get_restaurant_details(self.restaurant)
 end

 def self.restaurant
   @@restaurant
 end

 def self.get_restaurant_details(restaurant)
   puts ""
   puts "___________________________--_-- #{restaurant.title} --_--___________________________".colorize(:color => :cyan)  #, :background => :blue)
   puts "Name: #{restaurant.name}"
   puts "Address: #{restaurant.formatted_address}"
   puts "Opening Hours: #{restaurant.opening_hours}"
   puts "Rating: #{restaurant.rating}"
   puts "User Ratings Total: #{restaurant.user_ratings_total}"

   self.user_options
 end
   :name, :formatted_address, :opening_hours, :rating, :user_ratings_total
 def self.user_options
   curtains(2, 1)
     puts "Please type exit followed by ENTER if you would like to exit the restaurant program." # give the user the option of exiting the program
     puts " "
     puts "Otherwise, you may type next followed by ENTER to choose a restaurant from the shelf." # give the user an option to choose another restaurant
   input = gets.chomp.to_i
   if input == "exit"
     self.leave_restaurantshelf
   end
   if input == "next"
     self.list_restaurants
   end  # lists the restaurants on my restaurantshelf for user selection using Command Line Interface
   if input.between?(1, 10)
     self.mystery
     self.user_options
   end
     self.wrong_selection
 end

 def self.leave_restaurantshelf
   curtains(6, 0.1)
   puts " "
   puts Rainbow("                     Thank you for perusing my favourite japanese restaurants!").green
   puts " "
   curtains(6, 0.1)
   exit
 end

 def self.mystery
   # should be triggered by pressing 4-10 when prompted to input 2 or 11 for exit or choose again
   curtains(5, 0.5)
   puts Rainbow("        You found the secret [passage] behind the restaurants! :O").red
   curtains(7, 0.5)
   puts Rainbow("         You better not tell anyone! Now go back to looking at japanese restaurants!").red
   curtains(7, 0.5)
 end

 def self.wrong_selection
   # if input = 11..# anything not 2 or 3 - and above 10 and symbols and letters etc
     curtains(2, 0.75)
     puts " "
     puts Rainbow("                      you made an invalid selection, sorry try again                 ").blue
     puts " "
     self.user_options
 end
end
