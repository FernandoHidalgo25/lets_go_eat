class CLI
  # this CLI (Command Line Interface) class contains the user input/output methods
  # TODO: give the user the option of searching for categories within fiction

  # require_relative './repeat_repeat.rb' # require_relative
  # extend RepeatRepeat

  def self.list_restaurants # this class method iterates through the book instances held in the @@all array in the books.rb file
    puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~"#.colorize(:color => :black, :background => :light_white)  # line for spacing aesthetics
    puts "                                  Welcome, but in Japanese!                                    "#.colorize(:color => :yellow, :background => :light_cyan).bold  # Welcomes the user to the bookshelf they are viewing
    puts "~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~     ~~~~~"#.colorize(:color => :black, :background => :light_white)  # line for spacing aesthetics
    Restaurants.all.each_with_index do |restaurant, n| # and outputs an indexed list of my bookshelf book titles
      puts "#{n + 1}. #{restaurant.name}"
    end
        # self.choose_a_book # calls the chose_a_book class method from the CLI class
  end
end
