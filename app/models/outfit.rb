class Outfit < ActiveRecord::Base
	belongs_to :occasion
	has_and_belongs_to_many :articles
end
