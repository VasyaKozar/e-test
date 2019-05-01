class Profile < ApplicationRecord
	mount_uploader :avatar, PhotoUploader

	belongs_to :user
  validates :name, :phone, :address, :avatar, presence: true
  validates :name, uniqueness: true
end
