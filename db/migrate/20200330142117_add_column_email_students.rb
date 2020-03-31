class AddColumnEmailStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :email, :string, default:"", null: false
  end
end
