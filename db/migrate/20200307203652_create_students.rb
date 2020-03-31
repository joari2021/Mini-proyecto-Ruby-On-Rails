class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :document
      t.string :name
      t.string :last_name
      t.integer :age
      t.date :date_of_birth
      t.string :gender
      t.string :marital_status
      t.string :nationality
      t.integer :number_phone
      t.string :country
      t.string :state
      t.string :city
      t.string :address
      t.string :career
      t.string :reason

      t.timestamps
    end
  end
end
