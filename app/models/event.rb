class Event < ApplicationRecord
	validates :date, presence: true

	belongs_to :venue
	belongs_to :band
end
