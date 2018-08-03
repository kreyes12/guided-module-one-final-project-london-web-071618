require 'json'
require 'net/http'
require "pry"

Book.destroy_all
House.destroy_all
Character.destroy_all
BookCharacter.destroy_all

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
    url = "https://anapioficeandfire.com/api/characters/?page=#{i}&pageSize"
    i += 1
    uri = URI(url)
    response = Net::HTTP.get(uri)
    characters_array = JSON.parse(response)
    characters += characters_array
  end

  characters
end

def create_character
character_array = []
character_array += get_characters


character_array.each do |character|
  #character["books"].each do |book_url|
    #BookCharacter.create(book_id: )
  #end
  # character["characters"].each do |character_url|
  #   BookCharacter.create(character_url: character_url)


    a_character = Character.create(name: character["name"], url: character["url"],
    gender: character["gender"], culture: character["culture"], born: character["born"],
    died: character["died"], father: character["father"], mother: character["mother"],
    spouse: character["spouse"], actor: character["playedBy"], tv_season: character["tvSeries"])

character_house = House.find_by(url: character["allegiances"].first)
a_character.house = character_house
a_character.save

character_book = Book.find_by(url: character["books"])
if character_book != nil
a_character.books << character_book
a_character.save
end

end
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


book_array.each do |book|
  #book["characters"].map do |character_url|
    #BookCharacter.create(character_url: character_url)
#  end
  Book.create(url: book["url"], name: book["name"], isbn: book["isbn"], number_of_pages: book["numberOfPages"], publisher: book["publisher"], country: book["country"], mediatype: book["mediaType"], released: book["released"])
end


def get_houses

  i = 1
  houses = []

  while i < 9
    house_url = "https://anapioficeandfire.com/api/houses/?page=#{i}&pageSize=50"
    i += 1
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

def get_book_characters

end



get_books
get_houses
#get_characters
create_character
