class Property < ApplicationRecord
	validates_presence_of :address, :description, :street, :country, :l_desc
	validates_length_of :description, :maximum => 100
	validates_length_of :l_desc, :minimum => 10, :maximum => 1000
	

	def self.search(search)
		where("address LIKE ? OR country LIKE ?", "%#{search}%", "%#{search}%")
	end

end
