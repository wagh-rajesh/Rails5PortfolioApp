class PortFolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image 
	scope :ror_items, -> { where(subtitle: "Ruby on Rails") }
	scope :angular, -> { where(subtitle: "Angular") }

	after_initialize :set_defaults


	private

	def set_defaults
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "http://placehold.it/350x200" 
	end
end
