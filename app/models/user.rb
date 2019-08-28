class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :massages
  has_many :bookings, through: :massages
  has_many :reviews, through: :bookings
  mount_uploader :avatar, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :email, :first_name, :last_name, :address, :ZIP_code, :city, :gender, :mass_or_not
end
