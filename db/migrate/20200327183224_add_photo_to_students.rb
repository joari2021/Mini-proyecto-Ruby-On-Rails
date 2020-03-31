class AddPhotoToStudents < ActiveRecord::Migration[6.0]
  def change
    add_attachment :students,:photo
  end
end
