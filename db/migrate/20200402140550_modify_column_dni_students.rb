class ModifyColumnDniStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :document, :integer
    remove_column :students, :age, :integer
    remove_column :students, :number_phone, :integer
    add_column :students, :document, :string
    add_column :students, :age, :string
    add_column :students, :number_phone, :string
  end
end
