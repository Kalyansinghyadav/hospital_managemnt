class Role < ApplicationRecord
	has_many :doctors, dependent: :destroy
	validates :role_name, presence: true	, uniqueness: true
end
