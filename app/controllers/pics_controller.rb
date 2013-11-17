class PicsController < ApplicationController
	def index
		@pics = Pic.all
		# your'e grabbing many pics here... 
		#@pics is a variable.... where you access it is in the view.... capital P is important
	end

	def new
		@pic = Pic.new
		# one new row or one new Pic
		# think of the @pic as a temp variable
	end
 
 # for the create button / save button 
	 def create
	 		@pic = Pic.create(pic_params)
	 		redirect_to pics_path 
	 		# think of the @pic as a temp variable
	 end



	 private

# creating a function or a method 
	 def  pic_params
	 		params.require(:pic).permit(:lesson, :emotion, :learned, :image)
	 		#can specify what things you want htem to be abel to change
	 		# grab all the things from this pic thing.
	 end

end
