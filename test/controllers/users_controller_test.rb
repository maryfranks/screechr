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

  test "create" do
    assert_difference('User.count') do
      post user_url, params: { user: { username: "newuser", first_name: "k", last_name: "s", password: "1234", password_confirmation: "1234" } }
    end
  end

  test "update" do
    patch user_url, params: { user: { first_name: "new" } }
    @user.reload
    assert_equal "new", @user.first_name
  end
end
