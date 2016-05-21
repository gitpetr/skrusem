class ServicesController < ApplicationController
  def index
    @adminkas = Adminka.order(:title)
  end
end
