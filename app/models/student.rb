class Student < ApplicationRecord
    belongs_to :user

    validates :document, :age, :number_phone, :name, :last_name, :nationality, :state, :country, :city, :address, :reason, :gender, :marital_status, :career, presence: { message: " este campo no puede estar vacio"}
    validates :date_of_birth, presence: { message: " este campo contiene datos incorrectos"}

    validates :reason, length: {minimum:30, message: " el contenido es muy corto (caracteres minimos 30)"}

    has_attached_file :photo, styles: {small: "300x400#"}
    validates_attachment_content_type :photo, content_type: /\Aimage/, message: " es invalido"
    validates_attachment_file_name :photo, matches: [/png\z/, /jpe?g\z/], message: " es invalido"
end
