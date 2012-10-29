module Admin
  class ApplicationController < ActionController::Base

    if Rails.env.test?
      def current_user
        $mocked_user
      end
      helper_method :current_user
    end

    def index
    end
  end
end
