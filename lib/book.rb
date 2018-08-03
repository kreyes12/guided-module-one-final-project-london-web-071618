class Book < ActiveRecord::Base
    has_many :book_characters
    has_many :characters, through: :book_characters
end
