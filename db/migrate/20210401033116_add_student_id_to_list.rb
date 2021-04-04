class AddStudentIdToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :student_id_tabble, :int
  end
end
