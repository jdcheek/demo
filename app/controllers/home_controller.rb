class HomeController < ApplicationController
  def index
    response = HTTParty.get("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_APOD_KEY']}")
    @response = JSON.parse(response.body)
  end

  def about
  end
end
