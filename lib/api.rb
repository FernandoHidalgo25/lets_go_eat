require_relative '../config/key'

class API

  def self.jp_restaurants
    restaurants = RestClient.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=japanese+restaurants+in+NewJersey&key=#{Key.access_key}")
    restaurants_hash = JSON.parse(restaurants)

    restaurants_hash.each_with_index do |restaurant, n|
      Restaurants.new(restaurants_hash["html_attributions"]["results"][0]["icon"]["name"], restaurants_hash["formatted_address"], restaurants_hash["opening_hours"], restaurants_hash["rating"], restaurants_hash["user_ratings_total"])
    end
  end

end
