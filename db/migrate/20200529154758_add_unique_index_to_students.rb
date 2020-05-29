class AddUniqueIndexToStudents < ActiveRecord::Migration[5.1]
  def change
    add_index :students, [:studentNumber, :courseCode], unique: true
  end
end
