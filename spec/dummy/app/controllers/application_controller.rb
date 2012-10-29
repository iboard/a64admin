class ApplicationController < ActionController::Base
  protect_from_forgery


  def current_user
    $mocked_user
  end

end
