class ApplicationController < ActionController::Base

    protected
    
    def authenticate_student!
        redirect_to root_path unless user_signed_in? && current_user.is_student?
    end

    def authenticate_admin!
        redirect_to root_path unless user_signed_in? && current_user.is_admin?
    end
end
