class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  GENRE = ["Homme", "Femme"]
  has_many :massages
  has_many :bookings
  has_many :reviews

  mount_uploader :avatar, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :email, :first_name, :last_name, :address, :ZIP_code, :city, :gender, :mass_or_not
  validates :gender, inclusion: { in: GENRE }

  def rating
    self.reviews.sum(&:rating) / self.reviews.size.to_f
  end

  def bookings
    if self.mass_or_not
      self.massages.map(&:bookings).flatten
    else
      super
    end
  end

  def reviews
    if self.mass_or_not
      self.bookings.map(&:reviews).flatten
    else
      super
    end
  end
end
