module AdminHelper

  class MockedUser
    def is_admin?
      true
    end
  end

  def sign_in_as_admin
    $mocked_user ||= MockedUser.new
  end

end