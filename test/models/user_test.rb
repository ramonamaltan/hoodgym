require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test "user with email is valid" do
    assert @user.valid?
  end

  test 'user with invalid email is invalid' do
    user = User.new(email: 'test.org', encrypted_password: 'testpassword')
    assert_not user.valid?
  end
end
