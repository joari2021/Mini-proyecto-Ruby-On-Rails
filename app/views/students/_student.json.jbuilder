json.extract! student, :id, :document, :name, :last_name, :age, :date_of_birth, :gender, :marital_status, :nationality, :number_phone, :country, :state, :city, :address, :career, :reason, :created_at, :updated_at
json.url student_url(student, format: :json)
