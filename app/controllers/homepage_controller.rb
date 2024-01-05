class HomepageController < ApplicationController
  def index
  end

  def menu_view
    @data = File.read("#{Rails.root}/public/starorder1.json")
    render json: @data
  end
end
