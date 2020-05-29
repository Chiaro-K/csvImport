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
require 'csv'

class Student < ApplicationRecord
    #validate presence of student number
    validates :studentNumber, presence: true
    #validate that each student number is uniquely linked to a course code
    validates :studentNumber, uniqueness: { scope: :courseCode }

    self.primary_key = "studentNumber"

    def self.import(file)
        #dismantle csv file and run a loop to get each value
        CSV.foreach(file.path, headers: true) do |row|
            arr = row.to_s.split(';')
            student = Student.new({studentNumber: arr[0], firstName: arr[1], surname: arr[2], courseCode: arr[3], courseDescription: arr[4], grade: arr[5]})
            student.save
        end
    end
end
