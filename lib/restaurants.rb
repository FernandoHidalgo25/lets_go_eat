class Restaurants

  attr_accessor :name, :formatted_address, :opening_hours, :rating, :user_ratings_total
  # through a reader and a writer by using attr_accessor to make the variables available outside of the class

  @@all = []  # the class variable array

  #------------------------------------------------------------------------------------
  def initialize(name)#, formatted_address, opening_hours, rating, user_ratings_total)  # this method creates a new instances of a
binding.pry
    @name = name  # book from the API output and assigns the attributes to instance variables
    @formatted_address = formatted_address
    @opening_hours = opening_hours
    @rating = rating
    @user_ratings_total = user_ratings_total
    @@all << self  # stores each and every instance of a book in the class variable array
  end
  #------------------------------------------------------------------------------------
  #
  #------------------------------------------------------------------------------------
  def self.all  # this permits the class variable array to be utilized in other classes and methods
    @@all
  end
  #-------------------------------------------------------------------------------------
end
