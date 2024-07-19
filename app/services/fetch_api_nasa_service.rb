class FetchApiNasaService
  require 'open-uri'
  require 'json'

  def self.image
    url = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}"
    data_serialized = URI.open(url).read
    JSON.parse(data_serialized)
  end

  # a integrer
  def self.closest_asteroid
    puts "ok"
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{Date.today}&end_date=#{Date.today}&api_key=#{ENV['NASA_API_KEY']}"
    data_serialized = URI.open(url).read
    data = JSON.parse(data_serialized)
    puts data
  end

  def self.mars_photos
    # Example query
    # https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?earth_date=2015-6-3&api_key=DEMO_KEY
  end

  # integrer une autre api pour avoir lat et long selon une adresse (geocoding)
  # trouver une moyen de faire un timelaps de la terre avec l'adresse donnée
  def self.earth_photos
    # Example query
    # https://api.nasa.gov/planetary/earth/imagery?lon=100.75&lat=1.5&date=2014-02-01&api_key=DEMO_KEY
  end

  private
  # faire une methode qui trouve la derniere photo de mars (tester chaque date avec une boucle
  # jusqu'a trouver une photo puis l'afficher)

end
