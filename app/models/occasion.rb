class Occasion < ActiveRecord::Base
	has_many :outfits

	validate :name, presence: true
end
