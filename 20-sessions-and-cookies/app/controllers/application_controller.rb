class ApplicationController < ActionController::Base

    helper_method :logged_in?

    def set_user
        # logged_in? ?
    end

    def logged_in?
        !!session[:user_id]
    end
end
