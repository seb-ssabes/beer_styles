require "test_helper"

class BeerTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beer_types_index_url
    assert_response :success
  end
end
