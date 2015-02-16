module ApplicationHelper

	def current_user
			@current_user ||= User.find_by_id(session[:user_id])
	end

	def current_company
		current_user == User.find_by type: "Company"
	end

end
