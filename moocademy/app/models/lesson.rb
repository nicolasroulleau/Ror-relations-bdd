class Lesson < ApplicationRecord

	validates :title, presence: true, length: { maximum: 200}
	validates :body, presence: true

	belongs_to :course

end
