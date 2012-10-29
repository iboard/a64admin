module Admin
  class ApplicationController < ActionController::Base

    def current_user
      $mocked_user
    end
    helper_method :current_user

    def index
    end
  end
end
