# == Schema Information"
#
# Table name: student
#
#  studentNumber        :integer    not null, primary key
#  firstName            :string
#  surname              :string
#  courseCode           :string
#  courseDescription    :string
#  grade                :string
#
class Student < ApplicationRecord
    self.primary_key = "studentNumber"
end
