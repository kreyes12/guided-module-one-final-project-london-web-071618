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
    url = "https://anapioficeandfire.com/api/characters/?page=#{i}&pageSize"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    characters_array = JSON.parse(response)
    characters += characters_array
    i += 1
  end

  p characters
end


get_characters
