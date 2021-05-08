require "test_helper"

class OwnersinfoControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get ownersinfo_home_url
    assert_response :success
  end
end
