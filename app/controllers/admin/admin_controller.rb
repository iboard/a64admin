require_dependency "admin/application_controller"

module Admin

  class AdminController < ApplicationController

    before_filter :authenticate_admin!

    def index
    end


    private
    def authenticate_admin!
      unless current_user && current_user.is_admin?
        session[:requested_path] = request.original_fullpath
        redirect_to main_app.new_session_path, alert: t('admin.action.needs_sign_in', action: "Admin")
      end
    end
  end

end
