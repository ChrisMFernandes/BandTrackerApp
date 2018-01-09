class Venue < ApplicationRecord
	validates :name, presence: true
	validates :city, presence: true
	validates :state, presence: true

	has_many :events
	has_many :bands, :through => :events
end
