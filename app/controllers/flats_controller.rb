require "open-uri"

class FlatsController < ApplicationController
  before_action :get_flats
  
  def home
  end

  def flat
    id = params[:id].to_i
    @flat = @flats.find{|x| x['id'] == id}
  end

  private
  
  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
