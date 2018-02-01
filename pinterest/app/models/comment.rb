class Comment < ApplicationRecord

	validates :content, presence: true
	validates :user_id, presence: true
	validates :pin_id, presence: true

	belongs_to :user
	belongs_to :pin

end
