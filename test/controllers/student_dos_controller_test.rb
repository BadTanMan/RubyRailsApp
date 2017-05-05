require 'test_helper'

class StudentDosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_do = student_dos(:one)
  end

  test "should get index" do
    get student_dos_url
    assert_response :success
  end

  test "should get new" do
    get new_student_do_url
    assert_response :success
  end

  test "should create student_do" do
    assert_difference('StudentDo.count') do
      post student_dos_url, params: { student_do: { notes: @student_do.notes, title: @student_do.title } }
    end

    assert_redirected_to student_do_url(StudentDo.last)
  end

  test "should show student_do" do
    get student_do_url(@student_do)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_do_url(@student_do)
    assert_response :success
  end

  test "should update student_do" do
    patch student_do_url(@student_do), params: { student_do: { notes: @student_do.notes, title: @student_do.title } }
    assert_redirected_to student_do_url(@student_do)
  end

  test "should destroy student_do" do
    assert_difference('StudentDo.count', -1) do
      delete student_do_url(@student_do)
    end

    assert_redirected_to student_dos_url
  end
end
