class RemoveEmailAndAddScholarshipStatusStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :email
    add_column :students, :scholarship_status, :integer, default:0
  end
end
