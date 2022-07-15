class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_to_be_logged_in!
        redirect_to log_in_path, alert: "You need to be signed in!" if Current.user.nil?
    end
end
