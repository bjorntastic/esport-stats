class AccessController < ApplicationController

	def login

	end

	def logout

	end

	def attempt_login
		if params[:username].present? && params[:password].present?
			found_user = AdminUser.where(:username => params[:username])
	end

end
