class StaticPagesController < ApplicationController

	def home
		@properties = Property.all

		respond_to do |f|
			f.html
			f.xml {render :xml => @properties }
		end
	end

end
