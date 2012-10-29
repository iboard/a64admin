module AdminHelper

  class MockedUser
    attr_reader :name

    def initialize(name, is_admin=false)
      @name = name
      @is_admin = is_admin
    end

    def is_admin?
      @is_admin
    end
  end

  def sign_in_as_admin(name="Admin")
    $mocked_user = MockedUser.new(name,true)
  end

end