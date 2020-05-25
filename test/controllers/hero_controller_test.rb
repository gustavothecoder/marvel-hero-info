require 'test_helper'

class HeroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hero_index_url
    assert_response :success
  end

  test "should get search" do
    get hero_search_url
    assert_response :success
  end

  test "should get show" do
    get hero_show_url
    assert_response :success
  end

end
