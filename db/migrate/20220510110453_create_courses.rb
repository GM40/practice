class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.integer :duration
      t.string :subjects

      t.timestamps
    end
  end
end
