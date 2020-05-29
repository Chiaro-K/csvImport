require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "should not instantiate student without student number" do
    student = Student.new
    assert_not student.valid?, "Instantiates the student without student number"
  end

  test "should instantiate with student number" do
    student = Student.new({studentNumber: 987})
    assert student.valid?, "Doesn't instantiate student with student number"
  end

  test "should save with student number" do
    student = Student.new({studentNumber: 987})
    assert student.save!, "Doesn't save student with student number"
  end

  test "should not instantiate student where there are duplicates" do
    student1 = Student.new({studentNumber: 987, courseCode: 'A'})
    student1.save!

    student2 = Student.new({studentNumber: 987, courseCode: 'A'})
    assert_not student2.valid?, "Intantiates duplicate record on studentNumber and courseCode"
  end

  test "should instantiate student where the courseCode differs" do
    student1 = Student.new({studentNumber: 987, courseCode: 'A'})
    student1.save!

    student2 = Student.new({studentNumber: 987, courseCode: 'B'})
    assert student2.valid?, "Does not intantiate new record on different courseCode for studentNumber"
  end

  test "should instantiate student where the studentNumber differs" do
    student1 = Student.new({studentNumber: 987, courseCode: 'A'})
    student1.save!

    student2 = Student.new({studentNumber: 800, courseCode: 'A'})
    assert student2.valid?, "Does not intantiate new record on different studentNumber for courseCode"
  end
end
