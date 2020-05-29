class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students, id: false do |t|
      t.integer :studentNumber, unique: true, null: false
      t.string :firstName
      t.string :surname
      t.string :courseCode
      t.string :courseDescription
      t.string :grade

      t.timestamps
    end
  end
end
