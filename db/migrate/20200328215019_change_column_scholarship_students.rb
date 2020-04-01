class ChangeColumnScholarshipStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :scholarship_status, :string, default:"en_espera"
  end
end
