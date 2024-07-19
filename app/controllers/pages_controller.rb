class PagesController < ApplicationController
  def home
    @image_day = FetchApiNasaService.image
    @closest_asteroid = FetchApiNasaService.closest_asteroid
  end
end
