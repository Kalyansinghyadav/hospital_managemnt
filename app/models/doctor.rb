class Doctor < ApplicationRecord
	belongs_to :role
	validates :name, presence: true
	validates :contact_no, numericality: true
	validates :salary, numericality: true
end
