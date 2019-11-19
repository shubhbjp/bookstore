class Bookstore < ApplicationRecord
	belongs_to :publication
	has_many :books
end
	