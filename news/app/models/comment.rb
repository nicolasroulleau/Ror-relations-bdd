class Comment < ApplicationRecord

	validates :body, presence: true
	validates :user_id, presence: true
	validates :link_id || :comment_id, presence: true

	belongs_to :user
	belongs_to :link

end

