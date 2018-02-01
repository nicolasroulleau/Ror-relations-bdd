class Student < ApplicationRecord

	belongs_to :course

	validates :name, presence: true, length: { maximum: 250}
	validates :course_id, presence: true

end


