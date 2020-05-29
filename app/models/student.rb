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
    require 'csv'
    self.primary_key = "studentNumber"

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Student.create! row.to_hash
        end
    end
end
