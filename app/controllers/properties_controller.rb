class PropertiesController < ApplicationController
	

	def new
		@property = Property.new
	end

	def show
		@properties = Property.all
		
		if params[:search]
			@properties = Property.search(params[:search])
		else
			@properties = Property.all
		end

		respond_to do |f|
			f.html
			f.xml {render :xml => @properties }
		end

	end

	def create
		@property = Property.new(property_params)
		if @property.save
			redirect_to root_url
		else
			render 'new'
		end

	end

	def share

	end



private

  	def property_params
  		params.require(:property).permit(:address, :description, :street, :country, :l_desc)
  	end

end
