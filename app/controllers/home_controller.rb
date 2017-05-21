class HomeController < ApplicationController

  # GET index
  def index
  end

  # POST search
  def search
    response = ApiService.new.search(params[:query])
    @data = JSON.parse(response.body)
    @today = @data["list"][0]
  end
end
