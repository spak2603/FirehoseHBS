class PicsController < ApplicationController
	def index
		@pics = Pic.all
		#@pics is a variable.... where you access it is in the view.... capital P is important
	end

	def new
		@pic = Pic.new
	end
 
 # for the create button / save button 
	 def create
	 		@pic = Pic.create(pic_params)
	 		redirect_to pics_path 
	 end



	 private

# creating a function or a method 
	 def  pic_params
	 		params.require(:pic).permit(:lesson, :emotion, :learned)
	 		#can specify what things you want htem to be abel to change
	 		# grab all the things from this pic thing.
	 end

end
