class Band < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :genre, presence: true

	has_many :events
	has_many :venues, :through => :events
end
