require 'test_helper'

class AttendessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attendess_index_url
    assert_response :success
  end

  test "should get join" do
    get attendess_join_url
    assert_response :success
  end

end
