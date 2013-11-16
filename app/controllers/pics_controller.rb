class PicsController < ApplicationController
	def index
		@pics = Pic.all
		#@pics is a variable.... where you access it is in the view.... capital P is important
	end
end
