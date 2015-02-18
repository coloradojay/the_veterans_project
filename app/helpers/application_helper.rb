module ApplicationHelper
	def current_user
		@current_user ||= User.find_by_id(session[:user_id])
	end

	def current_user_is_business?
		current_user.business
	end

	def current_user_is_veteran?
		!current_user.business
	end
end
