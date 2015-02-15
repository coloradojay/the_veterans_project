module ApplicationHelper

	def current_user
			@current_user ||= User.find_by_id(session[:user_id])
			# if session[:user_id]
			# 	@current_user = User.find(session[:user_id])
			# 	return @current_user
			# else 
			# 	return nil
			# end			

	end

end
