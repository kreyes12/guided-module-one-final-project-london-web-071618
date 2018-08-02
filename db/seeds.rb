require 'json'
require 'net/http'
require "pry"

def get_characters
  # url = 'https://anapioficeandfire.com/api/characters/?page=2&pageSize=50'
  # uri = URI(url)
  # response = Net::HTTP.get(uri)
  # json_array = JSON.parse(response)
  #
  # binding.pry
  # 0
  i = 1
  characters = []


  while i <= 43
    i += 1
    url = "https://anapioficeandfire.com/api/characters/?page=#{i}&pageSize"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    characters_array = JSON.parse(response)
    characters += characters_array
  end

  characters
end

character_array = []
character_array += get_characters


character_array.each do |character|
  Character.create(name: character["name"], url: character["url"],
    gender: character["gender"], culture: character["culture"], born: character["born"],
  died: character["died"], father: character["father"], mother: character["mother"],
spouse: character["spouse"], actor: character["playedBy"])
end

def get_books
  books = []
  books_url = "https://anapioficeandfire.com/api/books/?page=1&pageSize=50"
  uri = URI(books_url)
  response = Net::HTTP.get(uri)
  books_array = JSON.parse(response)
  books += books_array
end

book_array = []
book_array += get_books

def get_houses

  i = 1
  houses = []

  while i < 9
    i += 1
    house_url = 'https://anapioficeandfire.com/api/houses/?page=1&pageSize=50'
    uri = URI(house_url)
    response = Net::HTTP.get(uri)
    house_array = JSON.parse(response)
    houses += house_array
  end
  houses
end

house_array = []
house_array += get_houses

house_array.each do |house|
  House.create(url: house["url"], name: house["name"], region: house["region"],
    coat_of_arms: house["coatOfArms"], motto: house["words"], current_lord: house["currentLord"],
    heir: house["heir"], overlord: house["overlord"], founded: house["founded"], founder: house["founder"],
    extinct:house["diedOut"])
end

get_characters
get_books
get_houses
