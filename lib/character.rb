class Character < ActiveRecord::Base
  belongs_to :house
  has_many :book_characters
  has_many :books, through: :book_characters
end
