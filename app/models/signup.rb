class Signup < ApplicationRecord
	validates :name, presence: true,length: { minimum: 5 }
	validates :terms_of_service, acceptance: true
end
