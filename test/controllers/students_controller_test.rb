require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_path
    assert_response :success, "Did not call index function"
  end

  test "should call import function and redirect after completion" do
    get_file = File.join(File.expand_path(Rails.root), "/public/students.csv")

    post import_students_path({file: get_file})
    assert_redirected_to "/", "Did not redirect to home page"
  end
end
