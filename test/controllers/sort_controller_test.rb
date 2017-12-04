require 'test_helper'

class SortControllerTest < ActionDispatch::IntegrationTest
  test "should get sort" do
    get sort_sort_url
    assert_response :success
  end

end
