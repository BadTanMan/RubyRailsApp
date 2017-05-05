require 'test_helper'

class TeacherloginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacherlogin_index_url
    assert_response :success
  end

end
