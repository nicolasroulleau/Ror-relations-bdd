class Course < ApplicationRecord

	validates :title, presence: true, length:{ maximum: 200}
	validates :description, presence: true

	has_many :lessons 

end
