class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :course_id
      t.string :student_name
      t.string :city
      t.integer :age

      t.timestamps
    end
  end
end
