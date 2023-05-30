require "test_helper"

class ApostasControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get apostas_create_url
    assert_response :success
  end
end
