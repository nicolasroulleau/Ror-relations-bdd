class User < ApplicationRecord

	validates :name, presence:true, uniqueness: { case_sensitive: false}

	has_many :pins
	has_many :comments


end
