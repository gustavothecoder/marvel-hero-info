# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

private 
  def get_heroes_info
    require 'rest-client'
    require 'json'
    url = "http://gateway.marvel.com/v1/public/characters?ts=1590100958&apikey=b9bf14c7bab64e17d3061b21b14dab24&hash=653e298d2304164d90030583945165d7"
    response = JSON.parse(RestClient.get(url))
    data = response["data"]
    results = data["results"]
    return results
  end

  def define_required_urls(urls)
    required_urls = {}
    urls.each do |url|
        if url["type"] == "detail"
            required_urls["detail"] = url["url"]
        elsif url["type"] == "wiki"
            required_urls["wiki"] = url["url"]
        elsif url["type"] == "comiclink"
            required_urls["comiclink"] = url["url"]
        end
    end
    return required_urls
  end

heroes = get_heroes_info
heroes.each do |hero|
    image = hero["thumbnail"]
    urls = define_required_urls(hero["urls"])
    Hero.create(name: hero["name"],
        description: hero["description"],
        image_path: image["path"],
        image_extension: image["extension"],
        detail: urls["detail"],
        wiki: urls["wiki"],
        comic_link: urls["comiclink"])
end