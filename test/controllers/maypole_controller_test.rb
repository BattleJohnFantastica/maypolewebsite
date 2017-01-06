require 'test_helper'

class MaypoleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get maypole_index_url
    assert_response :success
  end

end
