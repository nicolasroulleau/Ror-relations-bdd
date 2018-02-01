class Comment < ApplicationRecord

	validates :body, presence: true
	validates :user_id, presence: true
	validates :link_id || :comment_id, presence: true

	belongs_to :user, dependent: :destroy, counter_cache: true
	belongs_to :link, dependent: :destroy, counter_cache: true
	belongs_to :parent, :class_name => "Comment", :foreign_key => "parent_comment_id"
	has_many :child_comments, :class_name => "Comment", foreign_key => "child_comment_id"

end

