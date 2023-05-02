# El método request que recibe una URL y retorna un hash con los resultados:

require 'net/http'
require 'json'


def request(url)
  url = URI(url)
  res = Net::HTTP.get(url)
  JSON.parse(res)
end

# El método build_web_page que recibe un hash con los resultados y construye una página web:

def build_web_page(response)
    photos = response['photos']
    html = '<html><head></head><body><ul>'
    photos.each do |photo|
      html += "<li><img src='#{photo['img_src']}'></li>"
    end
    html += '</ul></body></html>'
end

# El método photos_count que recibe un hash con los resultados y devuelve un nuevo hash con la cantidad de fotos por cámara:

def photos_count(response)
    photos = response['photos']
    counts = Hash.new(0)
    photos.each do |photo|
      counts[photo['camera']['name']] += 1
    end
    counts
  end

#  Para utilizar estos métodos, podemos hacer lo siguiente:

url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=01&api_key=VwUGpG3LYgpLwK1YD5Eg95A8wU4sJ1RYUQzaMNde'
response = request(url)
puts build_web_page(response)
puts photos_count(response)
