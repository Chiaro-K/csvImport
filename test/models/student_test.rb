require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "should not save student without student number" do
    student = Student.new
    assert_not student.save, "Saves the student without student number"
  end

  test "should save with student number" do
    student = Student.new({studentNumber: 987})
    assert student.save, "Doesn't save student with student number"
  end
end
