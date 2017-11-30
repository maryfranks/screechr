require 'test_helper'

class ScreechesControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    sign_in_as users(:chattycathy)
  end

  test "index" do
    get screeches_url
    assert_response :success
  end

  test "create" do
    skip

    assert_difference('Screech.count') do
      post screeches_url, params: { screech: { content: 'new screech' } }
    end

  end

end
