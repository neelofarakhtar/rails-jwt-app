class HomesController < ApplicationController
	before_action :authenticate_user!
	def index
		if current_user.present?
			render json: {success: true,user: User.all},status: 200
		end
	end
end
