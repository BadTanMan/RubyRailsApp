class CreateStudentDos < ActiveRecord::Migration[5.1]
  def change
    create_table :student_dos do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
