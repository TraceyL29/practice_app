class AddStudentid < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :student_id, :string
  end
end
