class Restaurants
  attr_reader :name, :formatted_address, :opening_hours, :rating, :user_ratings_total #objects
  # through a reader and a writer by using attr_accessor to make the variables available outside of the class
  @@all = []  # the class variable array which stores all of the instances of the restaurant class
  #------------------------------------------------------------------------------------
  def initialize(name, formatted_address, opening_hours, rating, user_ratings_total)  # this method creates a new instances of a
    @name = name
    @formatted_address = formatted_address
    @opening_hours = opening_hours
    @rating = rating
    @user_ratings_total = user_ratings_total
    @@all << self
    # self above shovels all of the instantiated instances of the restaurants class into the @@all array
  end
  #------------------------------------------------------------------------------------
  #
  #------------------------------------------------------------------------------------
  def self.all  # self. permits the class variable array to be utilized in other classes and methods
    @@all
    #holds all of the instances (and objects) of the restaurants class
  end

end
