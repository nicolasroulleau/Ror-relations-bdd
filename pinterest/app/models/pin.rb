class Pin < ApplicationRecord

	VALID_URL_REGEX = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
	validates :url, presence: true, format: { with: VALID_URL_REGEX}, uniqueness: { case_sensitive: false }
	validates :user_id, presence: true

	belongs_to :user
	has_many :comments

end
