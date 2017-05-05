require 'test_helper'

class StudentloginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get studentlogin_index_url
    assert_response :success
  end

end
