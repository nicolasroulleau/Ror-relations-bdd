class Link < ApplicationRecord

	validates :url, presence: true, url: true, uniqueness: { case_sensitive: false }
	validates :user_id, presence: true

	belongs_to :user, dependent: :destroy, counter_cache: true
	has_many :comments

end

  # standard validation avec la gem "validate_url"
  # validates :url, url: true au lieu de format: {with: VALID_EMAIL_REGEX}
  # VALID_URL_REGEX = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
