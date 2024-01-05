class HomepageController < ApplicationController
  def index
  end

  def menu_view
    @data = File.read("#{Rails.root}/public/starorder1.json")
    render json: @data
  end
  def cloud1
    @data = File.read("#{Rails.root}/public/star.json")
    render json: @data
  end
end
