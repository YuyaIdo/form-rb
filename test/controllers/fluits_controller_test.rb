require "test_helper"

class FluitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fluits_index_url
    assert_response :success
  end
end
