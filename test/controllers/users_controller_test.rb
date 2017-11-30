require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    sign_in_as users(:chattycathy)
    @user = users(:chattycathy)
  end


  test "show" do
    get user_url
    assert_response :success
  end
end
