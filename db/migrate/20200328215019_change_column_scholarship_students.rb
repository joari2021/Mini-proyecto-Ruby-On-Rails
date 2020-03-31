class ChangeColumnScholarshipStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :scholarship_status
    add_column :students, :scholarship_status, :string, default:"en_espera"
  end
end
