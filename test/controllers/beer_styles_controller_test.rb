require "test_helper"

class BeerStylesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beer_styles_index_url
    assert_response :success
  end

  test "should get show" do
    get beer_styles_show_url
    assert_response :success
  end
end
