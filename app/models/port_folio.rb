class PortFolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image 
	scope :ror_items, -> { where(subtitle: "Ruby on Rails") }
	scope :angular, -> { where(subtitle: "Angular") }
end
